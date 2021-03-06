package com.erp.service.impl;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipInputStream;

import org.activiti.engine.FormService;
import org.activiti.engine.HistoryService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.form.TaskFormData;
import org.activiti.engine.history.HistoricVariableInstance;
import org.activiti.engine.impl.identity.Authentication;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.impl.pvm.PvmTransition;
import org.activiti.engine.impl.pvm.process.ActivityImpl;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.erp.dao.LeaveDao;
import com.erp.entity.BusLeave;
import com.erp.entity.MyTask;
import com.erp.service.IWorkflowService;
import com.erp.util.PageView;

@Transactional
@Service("workflowService")
public class WorkflowServiceImpl implements IWorkflowService {
	
	@Autowired
	private RepositoryService repositoryService;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private FormService formService;
	@Autowired
	private HistoryService historyService;
	
	@Autowired
	private LeaveDao leaveDao;
	/**
	 * 部署新流程
	 */
	@Override
	public void saveNewDeploye(CommonsMultipartFile file, String filename) {
		try {
			ZipInputStream zipInputStream = new ZipInputStream(
					file.getInputStream());
			repositoryService.createDeployment()
							.name(filename)
							.addZipInputStream(zipInputStream)
							.deploy();
		} catch (Exception e) {
		}
	}

	@Override
	public List<Deployment> findDeploymentList() {
		List<Deployment> dplist = repositoryService.createDeploymentQuery()
						.orderByDeploymenTime().asc()
						.list();
		return dplist;
	}

	@Override
	public List<ProcessDefinition> findProcessDefinitionList() {
		List<ProcessDefinition> pdlist = repositoryService.createProcessDefinitionQuery()
						.latestVersion()
						.orderByProcessDefinitionVersion().asc()
						.list();
		return pdlist;
	}

	@Override
	public void deleteProcessDefinitionByDeploymentId(String deploymentId) {
		repositoryService.deleteDeployment(deploymentId);
	}

	@Override
	public InputStream findImageInputStream(String deploymentId,
			String imageName) {
		return repositoryService.getResourceAsStream(deploymentId, imageName);
	}

	@Override
	public ProcessDefinition findProcessDefinitionListByPdId(String pdid) {
		ProcessDefinition pd = repositoryService.createProcessDefinitionQuery()
						.deploymentId(pdid)
						.singleResult();
		return pd;
	}

	/**启动流程**/
	@Override
	public void saveStartProcess(MyTask task) {
		Long id = task.getId();
		String pdid = task.getPdid();
		String key = "";
		Map<String, Object> variables = new HashMap<String,Object>();
		if ("BusLeave".equals(pdid)) {
			BusLeave leave = leaveDao.getById(id + "");
			//更新请假单的请假状态从0变成1（初始录入-->审核中）
			leave.setState(1);
			leaveDao.modify(leave);
			//使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
			key = leave.getClass().getSimpleName();
			variables.put("inputUser", leave.getUsername());//表示惟一用户
		}
		if ("BusStorage".equals(pdid)) {
			/*BusStorage storage = storageDao.getById(id + "");
			//更新请假单的请假状态从0变成1（初始录入-->审核中）
			storage.setState(1);
			storageDao.modify(storage);
			//使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
			key = storage.getClass().getSimpleName();
			variables.put("inputUser", storage.getUsername());//表示惟一用户
*/		}
		//格式：类名.id的形式（使用流程变量）
		String objId = key+"."+id;
		variables.put("objId", objId);
		runtimeService.startProcessInstanceByKey(key,objId,variables);
	}

	/**根据用户名获取任务列表*/
	@Override
	public List<Task> findTaskListByName(PageView pageView, String name) {
		return taskService.createTaskQuery()
						.taskAssignee(name)
						.orderByTaskCreateTime().asc()
						.listPage(pageView.getStartPage(), pageView.getStartPage() + pageView.getPageSize());
	}

	/**使用任务ID，获取当前任务节点中对应的Form key中的连接的值*/
	@Override
	public String findTaskFormKeyByTaskId(String taskId) {
		TaskFormData formData = formService.getTaskFormData(taskId);
		String url = formData.getFormKey();
		return url;
	}

	/**一：使用任务ID，查找请假单ID，从而获取请假单信息*/
	@Override
	public BusLeave findLeaveBillByTaskId(String taskId) {
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//使用任务ID查询
						.singleResult();
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//使用流程实例ID查询
						.singleResult();
		String buniness_key = pi.getBusinessKey();
		String id = "";
		if(StringUtils.isNotBlank(buniness_key)){
			id = buniness_key.split("\\.")[1];
		}
		//查询请假单对象
		BusLeave leaveBill = leaveDao.getById(id);
		return leaveBill;
	}
	/**已知任务ID，查询ProcessDefinitionEntiy对象，从而获取当前任务完成之后的连线名称，并放置到List<String>集合中*/
	@Override
	public List<String> findOutComeListByTaskId(String taskId) {
		//返回存放连线的名称集合
		List<String> list = new ArrayList<String>();
		//1:使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)//使用任务ID查询
					.singleResult();
		//2：获取流程定义ID
		String processDefinitionId = task.getProcessDefinitionId();
		//3：查询ProcessDefinitionEntiy对象
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity) repositoryService.getProcessDefinition(processDefinitionId);
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
					.processInstanceId(processInstanceId)//使用流程实例ID查询
					.singleResult();
		String activityId = pi.getActivityId();
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);
		List<PvmTransition> pvmList = activityImpl.getOutgoingTransitions();
		if(pvmList!=null && pvmList.size()>0){
			for(PvmTransition pvm:pvmList){
				String name = (String) pvm.getProperty("name");
				if(StringUtils.isNotBlank(name)){
					list.add(name);
				}
				else{
					list.add("默认提交");
				}
			}
		}
		return list;
	}
	
	/**查询所有历史审核人的审核信息，帮助当前人完成审核，返回List<Comment>*/
	@Override
	public List<Comment> findCommentByTaskId(String taskId) {
		List<Comment> list = new ArrayList<Comment>();
		//使用当前的任务ID，查询当前流程对应的历史任务ID
		//使用当前任务ID，获取当前任务对象
		Task task = taskService.createTaskQuery()//
				.taskId(taskId)//使用任务ID查询
				.singleResult();
		//获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}

	@Override
	public void saveSubmitTask(MyTask myTask) {
		//获取任务ID
		String taskId = myTask.getTaskId();
		//获取连线的名称
		String outcome = myTask.getOutcome();
		//批注信息
		String message = myTask.getComment();
		//获取请假单ID
		Long id = myTask.getId();
		//下一步处理人
		String nextName = myTask.getNextName();
		
		//使用任务ID，查询任务对象，获取流程流程实例ID
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//使用任务ID查询
						.singleResult();
		//获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi1 = runtimeService.createProcessInstanceQuery()//
				.processInstanceId(processInstanceId)//使用流程实例ID查询
				.singleResult();
		String className = pi1.getBusinessKey().split("\\.")[0];
		Authentication.setAuthenticatedUserId(myTask.getUsername());
		taskService.addComment(taskId, processInstanceId, message);
		Map<String, Object> variables = new HashMap<String,Object>();
		if(outcome!=null && !outcome.equals("默认提交")){
			variables.put("outcome", outcome);
		}
		variables.put("inputUser", nextName);
		taskService.complete(taskId, variables);
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//使用流程实例ID查询
						.singleResult();
		//流程结束了
		if(pi==null){
			//更新请假单表的状态从1变成2（审核中-->审核完成）
			if ("BusLeave".equals(className)) {
				BusLeave bill = leaveDao.getById(id + "");
				bill.setState(2);
				leaveDao.modify(bill);
			}
			if ("BusStorage".equals(className)) {
				/*BusStorage storage = storageDao.getById(id + "");
				storage.setState(2);
				leaveDao.modify(storage);*/
			}
		}
	}

	@Override
	public List<MyTask> findApplyFormByName(PageView pageView, MyTask myTask) {
		//查询所有流程定义
		List<MyTask> tasks = new ArrayList<MyTask>();
		List<ProcessDefinition> pdList = findProcessDefinitionList();
		//将所有流程定义，封装到MyTask类
		if (null != pdList && pdList.size() > 0) {
			for (ProcessDefinition pd : pdList) {
				String className = pd.getKey();
				String pdname = pd.getName();
				if ("BusLeave".equals(className)) {
					BusLeave busLeave = new BusLeave(myTask.getUsername());
					List<BusLeave> leaves = leaveDao.query(pageView, busLeave);
					for (BusLeave leave : leaves) {
						MyTask t = new MyTask();
						t.setId(leave.getId());
						t.setApplyDate(leave.getLeaveDate());
						t.setPdid(className);
						t.setPdname(pdname);
						t.setTitle(leave.getContent());
						t.setUsername(leave.getUsername());
						t.setState(leave.getState());
						tasks.add(t);
					}
				}
			}
		}
		return tasks;
	}
	
	/**查看请假单审批历史**/
	@Override
	public List<Comment> findLeaveCommentById(String id) {
		//使用请假单ID，查询请假单对象
		BusLeave leave = leaveDao.getById(id);
		//获取对象的名称
		String objectName = leave.getClass().getSimpleName();
		//组织流程表中的字段中的值
		String objId = objectName+"."+id;
		
		HistoricVariableInstance hvi = historyService.createHistoricVariableInstanceQuery()//对应历史的流程变量表
						.variableValueEquals("objId", objId)//使用流程变量的名称和流程变量的值查询
						.singleResult();
		//流程实例ID
		String processInstanceId = hvi.getProcessInstanceId();
		List<Comment> list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}
	/**使用任务对象获取流程定义ID，查询流程定义对象*/
	@Override
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId) {
		//使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)
					.singleResult();
		//获取流程定义ID
		String processDefinitionId = task.getProcessDefinitionId();
		//查询流程定义的对象
		ProcessDefinition pd = repositoryService.createProcessDefinitionQuery() 
					.processDefinitionId(processDefinitionId)
					.singleResult();
		return pd;
	}
	
	@Override
	public Map<String, Object> findCoordingByTask(String taskId) {
		//存放坐标
		Map<String, Object> map = new HashMap<String,Object>();
		//使用任务ID，查询任务对象
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)//使用任务ID查询
					.singleResult();
		//获取流程定义的ID
		String processDefinitionId = task.getProcessDefinitionId();
		//获取流程定义的实体对象（对应.bpmn文件中的数据）
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity)repositoryService.getProcessDefinition(processDefinitionId);
		//流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//使用流程实例ID，查询正在执行的执行对象表，获取当前活动对应的流程实例对象
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//创建流程实例查询
					.processInstanceId(processInstanceId)//使用流程实例ID查询
					.singleResult();
		//获取当前活动的ID
		String activityId = pi.getActivityId();
		//获取当前活动对象
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);//活动ID
		//获取坐标
		map.put("x", activityImpl.getX());
		map.put("y", activityImpl.getY());
		map.put("width", activityImpl.getWidth());
		map.put("height", activityImpl.getHeight());
		return map;
	}
}

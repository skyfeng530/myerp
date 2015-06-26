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
		//1：获取请假单ID，使用请假单ID，查询请假单的对象LeaveBill
		Long id = task.getId();
		BusLeave leave = leaveDao.getById(id + "");
		//2：更新请假单的请假状态从0变成1（初始录入-->审核中）
		leave.setState(1);
		leaveDao.modify(leave);
		//3：使用当前对象获取到流程定义的key（对象的名称就是流程定义的key）
		String key = leave.getClass().getSimpleName();
		/**
		 * 4：获取当前任务的办理人，使用流程变量设置下一个任务的办理人
			    * inputUser是流程变量的名称，
			    * 获取的办理人是流程变量的值
		 */
		Map<String, Object> variables = new HashMap<String,Object>();
		variables.put("inputUser", leave.getUsername());//表示惟一用户
		/**
		 * 5：(1)使用流程变量设置字符串（格式：LeaveBill.id的形式），通过设置，让启动的流程（流程实例）关联业务
   			 (2)使用正在执行对象表中的一个字段BUSINESS_KEY（Activiti提供的一个字段），让启动的流程（流程实例）关联业务
		 */
		//格式：LeaveBill.id的形式（使用流程变量）
		String objId = key+"."+id;
		variables.put("objId", objId);
		//6：使用流程定义的key，启动流程实例，同时设置流程变量，同时向正在执行的执行对象表中的字段BUSINESS_KEY添加业务数据，同时让流程关联业务
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
		//1：使用任务ID，查询任务对象Task
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//使用任务ID查询
						.singleResult();
		//2：使用任务对象Task获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//3：使用流程实例ID，查询正在执行的执行对象表，返回流程实例对象
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//使用流程实例ID查询
						.singleResult();
		//4：使用流程实例对象获取BUSINESS_KEY
		String buniness_key = pi.getBusinessKey();
		//5：获取BUSINESS_KEY对应的主键ID，使用主键ID，查询请假单对象（BusLeave.1）
		String id = "";
		if(StringUtils.isNotBlank(buniness_key)){
			//截取字符串，取buniness_key小数点的第2个值
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
		//使用任务对象Task获取流程实例ID
		String processInstanceId = task.getProcessInstanceId();
		//使用流程实例ID，查询正在执行的执行对象表，返回流程实例对象
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
					.processInstanceId(processInstanceId)//使用流程实例ID查询
					.singleResult();
		//获取当前活动的id
		String activityId = pi.getActivityId();
		//4：获取当前的活动
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);
		//5：获取当前活动完成之后连线的名称
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
//		//使用流程实例ID，查询历史任务，获取历史任务对应的每个任务ID
//		List<HistoricTaskInstance> htiList = historyService.createHistoricTaskInstanceQuery()//历史任务表查询
//						.processInstanceId(processInstanceId)//使用流程实例ID查询
//						.list();
//		//遍历集合，获取每个任务ID
//		if(htiList!=null && htiList.size()>0){
//			for(HistoricTaskInstance hti:htiList){
//				//任务ID
//				String htaskId = hti.getId();
//				//获取批注信息
//				List<Comment> taskList = taskService.getTaskComments(htaskId);//对用历史完成后的任务ID
//				list.addAll(taskList);
//			}
//		}
		list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}
}

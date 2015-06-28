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
	 * ����������
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

	/**��������**/
	@Override
	public void saveStartProcess(MyTask task) {
		Long id = task.getId();
		String pdid = task.getPdid();
		String key = "";
		Map<String, Object> variables = new HashMap<String,Object>();
		if ("BusLeave".equals(pdid)) {
			BusLeave leave = leaveDao.getById(id + "");
			//������ٵ������״̬��0���1����ʼ¼��-->����У�
			leave.setState(1);
			leaveDao.modify(leave);
			//ʹ�õ�ǰ�����ȡ�����̶����key����������ƾ������̶����key��
			key = leave.getClass().getSimpleName();
			variables.put("inputUser", leave.getUsername());//��ʾΩһ�û�
		}
		if ("BusStorage".equals(pdid)) {
			/*BusStorage storage = storageDao.getById(id + "");
			//������ٵ������״̬��0���1����ʼ¼��-->����У�
			storage.setState(1);
			storageDao.modify(storage);
			//ʹ�õ�ǰ�����ȡ�����̶����key����������ƾ������̶����key��
			key = storage.getClass().getSimpleName();
			variables.put("inputUser", storage.getUsername());//��ʾΩһ�û�
*/		}
		//��ʽ������.id����ʽ��ʹ�����̱�����
		String objId = key+"."+id;
		variables.put("objId", objId);
		runtimeService.startProcessInstanceByKey(key,objId,variables);
	}

	/**�����û�����ȡ�����б�*/
	@Override
	public List<Task> findTaskListByName(PageView pageView, String name) {
		return taskService.createTaskQuery()
						.taskAssignee(name)
						.orderByTaskCreateTime().asc()
						.listPage(pageView.getStartPage(), pageView.getStartPage() + pageView.getPageSize());
	}

	/**ʹ������ID����ȡ��ǰ����ڵ��ж�Ӧ��Form key�е����ӵ�ֵ*/
	@Override
	public String findTaskFormKeyByTaskId(String taskId) {
		TaskFormData formData = formService.getTaskFormData(taskId);
		String url = formData.getFormKey();
		return url;
	}

	/**һ��ʹ������ID��������ٵ�ID���Ӷ���ȡ��ٵ���Ϣ*/
	@Override
	public BusLeave findLeaveBillByTaskId(String taskId) {
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//ʹ������ID��ѯ
						.singleResult();
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
						.singleResult();
		String buniness_key = pi.getBusinessKey();
		String id = "";
		if(StringUtils.isNotBlank(buniness_key)){
			id = buniness_key.split("\\.")[1];
		}
		//��ѯ��ٵ�����
		BusLeave leaveBill = leaveDao.getById(id);
		return leaveBill;
	}
	/**��֪����ID����ѯProcessDefinitionEntiy���󣬴Ӷ���ȡ��ǰ�������֮����������ƣ������õ�List<String>������*/
	@Override
	public List<String> findOutComeListByTaskId(String taskId) {
		//���ش�����ߵ����Ƽ���
		List<String> list = new ArrayList<String>();
		//1:ʹ������ID����ѯ�������
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)//ʹ������ID��ѯ
					.singleResult();
		//2����ȡ���̶���ID
		String processDefinitionId = task.getProcessDefinitionId();
		//3����ѯProcessDefinitionEntiy����
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity) repositoryService.getProcessDefinition(processDefinitionId);
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
					.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
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
					list.add("Ĭ���ύ");
				}
			}
		}
		return list;
	}
	
	/**��ѯ������ʷ����˵������Ϣ��������ǰ�������ˣ�����List<Comment>*/
	@Override
	public List<Comment> findCommentByTaskId(String taskId) {
		List<Comment> list = new ArrayList<Comment>();
		//ʹ�õ�ǰ������ID����ѯ��ǰ���̶�Ӧ����ʷ����ID
		//ʹ�õ�ǰ����ID����ȡ��ǰ�������
		Task task = taskService.createTaskQuery()//
				.taskId(taskId)//ʹ������ID��ѯ
				.singleResult();
		//��ȡ����ʵ��ID
		String processInstanceId = task.getProcessInstanceId();
		list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}

	@Override
	public void saveSubmitTask(MyTask myTask) {
		//��ȡ����ID
		String taskId = myTask.getTaskId();
		//��ȡ���ߵ�����
		String outcome = myTask.getOutcome();
		//��ע��Ϣ
		String message = myTask.getComment();
		//��ȡ��ٵ�ID
		Long id = myTask.getId();
		//��һ��������
		String nextName = myTask.getNextName();
		
		//ʹ������ID����ѯ������󣬻�ȡ��������ʵ��ID
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//ʹ������ID��ѯ
						.singleResult();
		//��ȡ����ʵ��ID
		String processInstanceId = task.getProcessInstanceId();
		ProcessInstance pi1 = runtimeService.createProcessInstanceQuery()//
				.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
				.singleResult();
		String className = pi1.getBusinessKey().split("\\.")[0];
		Authentication.setAuthenticatedUserId(myTask.getUsername());
		taskService.addComment(taskId, processInstanceId, message);
		Map<String, Object> variables = new HashMap<String,Object>();
		if(outcome!=null && !outcome.equals("Ĭ���ύ")){
			variables.put("outcome", outcome);
		}
		variables.put("inputUser", nextName);
		taskService.complete(taskId, variables);
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
						.singleResult();
		//���̽�����
		if(pi==null){
			//������ٵ����״̬��1���2�������-->�����ɣ�
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
		//��ѯ�������̶���
		List<MyTask> tasks = new ArrayList<MyTask>();
		List<ProcessDefinition> pdList = findProcessDefinitionList();
		//���������̶��壬��װ��MyTask��
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
	
	/**�鿴��ٵ�������ʷ**/
	@Override
	public List<Comment> findLeaveCommentById(String id) {
		//ʹ����ٵ�ID����ѯ��ٵ�����
		BusLeave leave = leaveDao.getById(id);
		//��ȡ���������
		String objectName = leave.getClass().getSimpleName();
		//��֯���̱��е��ֶ��е�ֵ
		String objId = objectName+"."+id;
		
		HistoricVariableInstance hvi = historyService.createHistoricVariableInstanceQuery()//��Ӧ��ʷ�����̱�����
						.variableValueEquals("objId", objId)//ʹ�����̱��������ƺ����̱�����ֵ��ѯ
						.singleResult();
		//����ʵ��ID
		String processInstanceId = hvi.getProcessInstanceId();
		List<Comment> list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}
	/**ʹ����������ȡ���̶���ID����ѯ���̶������*/
	@Override
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId) {
		//ʹ������ID����ѯ�������
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)
					.singleResult();
		//��ȡ���̶���ID
		String processDefinitionId = task.getProcessDefinitionId();
		//��ѯ���̶���Ķ���
		ProcessDefinition pd = repositoryService.createProcessDefinitionQuery() 
					.processDefinitionId(processDefinitionId)
					.singleResult();
		return pd;
	}
	
	@Override
	public Map<String, Object> findCoordingByTask(String taskId) {
		//�������
		Map<String, Object> map = new HashMap<String,Object>();
		//ʹ������ID����ѯ�������
		Task task = taskService.createTaskQuery()//
					.taskId(taskId)//ʹ������ID��ѯ
					.singleResult();
		//��ȡ���̶����ID
		String processDefinitionId = task.getProcessDefinitionId();
		//��ȡ���̶����ʵ����󣨶�Ӧ.bpmn�ļ��е����ݣ�
		ProcessDefinitionEntity processDefinitionEntity = (ProcessDefinitionEntity)repositoryService.getProcessDefinition(processDefinitionId);
		//����ʵ��ID
		String processInstanceId = task.getProcessInstanceId();
		//ʹ������ʵ��ID����ѯ����ִ�е�ִ�ж������ȡ��ǰ���Ӧ������ʵ������
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//��������ʵ����ѯ
					.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
					.singleResult();
		//��ȡ��ǰ���ID
		String activityId = pi.getActivityId();
		//��ȡ��ǰ�����
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);//�ID
		//��ȡ����
		map.put("x", activityImpl.getX());
		map.put("y", activityImpl.getY());
		map.put("width", activityImpl.getWidth());
		map.put("height", activityImpl.getHeight());
		return map;
	}
}

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

	/**��������**/
	@Override
	public void saveStartProcess(MyTask task) {
		//1����ȡ��ٵ�ID��ʹ����ٵ�ID����ѯ��ٵ��Ķ���LeaveBill
		Long id = task.getId();
		BusLeave leave = leaveDao.getById(id + "");
		//2��������ٵ������״̬��0���1����ʼ¼��-->����У�
		leave.setState(1);
		leaveDao.modify(leave);
		//3��ʹ�õ�ǰ�����ȡ�����̶����key����������ƾ������̶����key��
		String key = leave.getClass().getSimpleName();
		/**
		 * 4����ȡ��ǰ����İ����ˣ�ʹ�����̱���������һ������İ�����
			    * inputUser�����̱��������ƣ�
			    * ��ȡ�İ����������̱�����ֵ
		 */
		Map<String, Object> variables = new HashMap<String,Object>();
		variables.put("inputUser", leave.getUsername());//��ʾΩһ�û�
		/**
		 * 5��(1)ʹ�����̱��������ַ�������ʽ��LeaveBill.id����ʽ����ͨ�����ã������������̣�����ʵ��������ҵ��
   			 (2)ʹ������ִ�ж�����е�һ���ֶ�BUSINESS_KEY��Activiti�ṩ��һ���ֶΣ��������������̣�����ʵ��������ҵ��
		 */
		//��ʽ��LeaveBill.id����ʽ��ʹ�����̱�����
		String objId = key+"."+id;
		variables.put("objId", objId);
		//6��ʹ�����̶����key����������ʵ����ͬʱ�������̱�����ͬʱ������ִ�е�ִ�ж�����е��ֶ�BUSINESS_KEY���ҵ�����ݣ�ͬʱ�����̹���ҵ��
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
		//1��ʹ������ID����ѯ�������Task
		Task task = taskService.createTaskQuery()//
						.taskId(taskId)//ʹ������ID��ѯ
						.singleResult();
		//2��ʹ���������Task��ȡ����ʵ��ID
		String processInstanceId = task.getProcessInstanceId();
		//3��ʹ������ʵ��ID����ѯ����ִ�е�ִ�ж������������ʵ������
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
						.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
						.singleResult();
		//4��ʹ������ʵ�������ȡBUSINESS_KEY
		String buniness_key = pi.getBusinessKey();
		//5����ȡBUSINESS_KEY��Ӧ������ID��ʹ������ID����ѯ��ٵ�����BusLeave.1��
		String id = "";
		if(StringUtils.isNotBlank(buniness_key)){
			//��ȡ�ַ�����ȡbuniness_keyС����ĵ�2��ֵ
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
		//ʹ���������Task��ȡ����ʵ��ID
		String processInstanceId = task.getProcessInstanceId();
		//ʹ������ʵ��ID����ѯ����ִ�е�ִ�ж������������ʵ������
		ProcessInstance pi = runtimeService.createProcessInstanceQuery()//
					.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
					.singleResult();
		//��ȡ��ǰ���id
		String activityId = pi.getActivityId();
		//4����ȡ��ǰ�Ļ
		ActivityImpl activityImpl = processDefinitionEntity.findActivity(activityId);
		//5����ȡ��ǰ����֮�����ߵ�����
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
//		//ʹ������ʵ��ID����ѯ��ʷ���񣬻�ȡ��ʷ�����Ӧ��ÿ������ID
//		List<HistoricTaskInstance> htiList = historyService.createHistoricTaskInstanceQuery()//��ʷ������ѯ
//						.processInstanceId(processInstanceId)//ʹ������ʵ��ID��ѯ
//						.list();
//		//�������ϣ���ȡÿ������ID
//		if(htiList!=null && htiList.size()>0){
//			for(HistoricTaskInstance hti:htiList){
//				//����ID
//				String htaskId = hti.getId();
//				//��ȡ��ע��Ϣ
//				List<Comment> taskList = taskService.getTaskComments(htaskId);//������ʷ��ɺ������ID
//				list.addAll(taskList);
//			}
//		}
		list = taskService.getProcessInstanceComments(processInstanceId);
		return list;
	}
}

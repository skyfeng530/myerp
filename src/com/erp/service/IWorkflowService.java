package com.erp.service;

import java.io.InputStream;
import java.util.List;
import java.util.Map;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.erp.entity.BusLeave;
import com.erp.entity.MyTask;
import com.erp.util.PageView;

public interface IWorkflowService {

	public void saveNewDeploye(CommonsMultipartFile file, String filename);

	public List<Deployment> findDeploymentList();

	public List<ProcessDefinition> findProcessDefinitionList();

	public void deleteProcessDefinitionByDeploymentId(String deploymentId);

	public InputStream findImageInputStream(String deploymentId,
			String imageName);

	public ProcessDefinition findProcessDefinitionListByPdId(String pdid);

	/**��������**/
	public void saveStartProcess(MyTask task);

	/**�����û�����ȡ�����б�
	 * @param pageView */
	public List<Task> findTaskListByName(PageView pageView, String name);

	/**ʹ������ID����ȡ��ǰ����ڵ��ж�Ӧ��Form key�е����ӵ�ֵ*/
	public String findTaskFormKeyByTaskId(String taskId);

	/**ʹ������ID��������ٵ�ID���Ӷ���ȡ��ٵ���Ϣ*/
	public BusLeave findLeaveBillByTaskId(String taskId);

	/**��֪����ID����ѯProcessDefinitionEntiy���󣬴Ӷ���ȡ��ǰ�������֮����������ƣ������õ�List<String>������*/
	public List<String> findOutComeListByTaskId(String taskId);

	/**��ѯ������ʷ����˵������Ϣ��������ǰ�������ˣ�����List<Comment>*/
	public List<Comment> findCommentByTaskId(String taskId);

	public void saveSubmitTask(MyTask task);

	public List<MyTask> findApplyFormByName(PageView pageView, MyTask myTask);

	/**�鿴��ٵ�������ʷ**/
	public List<Comment> findLeaveCommentById(String id);

	/**ʹ����������ȡ���̶���ID����ѯ���̶������*/
	public ProcessDefinition findProcessDefinitionByTaskId(String taskId);

	public Map<String, Object> findCoordingByTask(String taskId);

}

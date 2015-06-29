package com.erp.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.erp.dao.UserDao;
import com.erp.entity.BusLeave;
import com.erp.entity.BusStorage;
import com.erp.entity.MyTask;
import com.erp.entity.User;
import com.erp.entity.WorkflowBean;
import com.erp.service.IWorkflowService;
import com.erp.service.LeaveService;
import com.erp.util.Common;
import com.erp.util.PageView;
import com.erp.util.SessionContext;

@Controller
@RequestMapping(value="/background/workflow/")
public class Workflowcontroller{
	
	@Autowired
	private IWorkflowService workflowService;
	
	@Autowired
	private LeaveService leaveService;
	
	@Autowired
	private UserDao userDao;

	/**
	 * 部署管理首页显示
	 * @return
	 */
	@RequestMapping(value="deployHome")
	public String deployHome(Model model){
		//1:查询部署对象信息，对应表（act_re_deployment）
		List<Deployment> depList = workflowService.findDeploymentList();
		//2:查询流程定义的信息，对应表（act_re_procdef）
		List<ProcessDefinition> pdList = workflowService.findProcessDefinitionList();
		//放置到上下文对象中
		model.addAttribute("depList", depList);
		model.addAttribute("pdList", pdList);
		return "/background/workflow/deployHome";
	}
	
	/**
	 * 跳转至部署页面
	 * @return
	 */
	@RequestMapping(value="deployUI")
	public String deployUI(){
		
		return "/background/workflow/deployUI";
	}
	
	/**
	 * 发布流程
	 * @return
	 */
	@RequestMapping(value="newdeploy")
	public String newdeploy(WorkflowBean workflowBean){
		//获取页面传递的值
		//1：获取页面上传递的zip格式的文件，格式是File类型
		CommonsMultipartFile file = workflowBean.getFile();
		
		//文件名称
		String filename = workflowBean.getFilename();
		//完成部署
		workflowService.saveNewDeploye(file,filename);
		return "redirect:deployHome.html";
	}
	
	/**
	 * 删除部署信息
	 */
	@RequestMapping(value="delDeployment")
	public String delDeployment(WorkflowBean workflowBean){
		//1：获取部署对象ID
		String deploymentId = workflowBean.getDeploymentId();
		//2：使用部署对象ID，删除流程定义
		workflowService.deleteProcessDefinitionByDeploymentId(deploymentId);
		return "redirect:deployHome.html";
	}
	
	/**
	 * 查看流程图
	 * @throws Exception 
	 */
	@RequestMapping(value="viewImage")
	public String viewImage(HttpServletResponse response , WorkflowBean workflowBean) throws Exception{
		//部署对象ID
		String deploymentId = workflowBean.getDeploymentId();
		//资源图片名称
		String imageName = workflowBean.getImageName();
		//获取资源文件表（act_ge_bytearray）中资源图片输入流InputStream
		InputStream in = workflowService.findImageInputStream(deploymentId,imageName);
		OutputStream out = response.getOutputStream();
		for(int b=-1;(b=in.read())!=-1;){
			out.write(b);
		}
		out.close();
		in.close();
		//将图写到页面上，用输出流写
		return null;
	}
	
	/**
	 * 跳转至填写申请页面
	 * @return
	 */
	@RequestMapping(value="formTemplateList")
	public String formTemplateList(Model model){
		//查询流程定义的信息，对应表（act_re_procdef）
		List<ProcessDefinition> pdList = workflowService.findProcessDefinitionList();
		//放置到上下文对象中
		model.addAttribute("pdList", pdList);
		return "/background/workflow/formTemplateList";
	}
	
	/**
	 * 跳转至填写申请页面
	 * @return
	 */
	@RequestMapping(value="applyFormUI")
	public String applyFormUI(HttpServletRequest request ,Model model){
		String pdid = request.getParameter("deploymentId");
		//查询流程定义的信息，对应表（act_re_procdef）
		ProcessDefinition pd = workflowService.findProcessDefinitionListByPdId(pdid);
		//放置到上下文对象中
		model.addAttribute("pd", pd);
		//根据流程定义的key设置url
		if ("BusLeave".equals(pd.getKey())) {
			model.addAttribute("url", "leave");
		}
		if ("BusStorage".equals(pd.getKey())) {
			model.addAttribute("url", "storage");
		}
		return "/background/workflow/applyFormUI";
	}
	
	/**
	 * 提交请假任务
	 */
	@RequestMapping(value="submitForm_leave")
	public String submitForm_leave(HttpServletRequest request, BusLeave busLeave){
		busLeave.setUsername(SessionContext.get(request).getUserName());
		leaveService.add(busLeave);
		return "redirect:myApplyList.html";
	}
	/**
	 * 提交入库任务
	 */
	@RequestMapping(value="submitForm_storage")
	public String submitForm_storage(HttpServletRequest request, BusStorage storage){
//		storage.setUsername(SessionContext.get(request).getUserName());
//		leaveService.add(busLeave);
		return "redirect:myApplyList.html";
	}
	
	/**
	 * 未处理任务页面
	 * @return
	 */
	@RequestMapping(value="myTaskList")
	public String myTaskList(HttpServletRequest request,Model model,BusLeave busLeave, String pageNow){
		PageView pageView = null;
		if(Common.isEmpty(pageNow)){
			pageView = new PageView(1);
		}else{
			pageView = new PageView(Integer.parseInt(pageNow));
		}
		//从Session中获取当前用户名
		String name = SessionContext.get(request).getUserName();
		//使用当前用户名查询正在执行的任务表，获取当前任务的集合List<Task>
		List<Task> tasks = workflowService.findTaskListByName(pageView,name); 
		pageView.setRecords(tasks);
		model.addAttribute("pageView", pageView);
		return "/background/workflow/myTaskList";
	}
	
	/**
	 * 我的申请查询页面
	 * @return
	 */
	@RequestMapping(value="myApplyList")
	public String myApplyList(HttpServletRequest request,Model model,MyTask myTask, String pageNow){
		PageView pageView = null;
		if(Common.isEmpty(pageNow)){
			pageView = new PageView(1);
		}else{
			pageView = new PageView(Integer.parseInt(pageNow));
		}
		myTask.setUsername(SessionContext.get(request).getUserName());
		List<MyTask> tasks = workflowService.findApplyFormByName(pageView, myTask);
		pageView.setRecords(tasks);
		model.addAttribute("pageView", pageView);
		return "/background/workflow/myApplyList";
	}
	
	// 启动流程
	@RequestMapping(value="startProcess")
	public String startProcess(MyTask task){
		//更新请假状态，启动流程实例，让启动的流程实例关联业务
		workflowService.saveStartProcess(task);
		return "redirect:myTaskList.html";
	}
	
	/**
	 * 打开任务表单
	 */
	@RequestMapping(value="viewTaskForm")
	public String viewTaskForm(Model model, MyTask task){
		//任务ID
		String taskId = task.getTaskId();
		model.addAttribute("taskId", taskId);
		//获取任务表单中任务节点的url连接
		String url = workflowService.findTaskFormKeyByTaskId(taskId);
		//url = "audit_leave";
		model.addAttribute("url", url);
		return "redirect:" + url + ".html";
	}
	
	/**
	 *  准备表单数据----请假单
	 * @return
	 */
	@RequestMapping(value="audit_leave")
	public String audit_leave(HttpServletRequest request, Model model){
		//获取任务ID
		String taskId = request.getParameter("taskId");
		model.addAttribute("taskId",taskId);
		//使用任务ID，查找请假单ID，从而获取请假单信息
		BusLeave leave = workflowService.findLeaveBillByTaskId(taskId);
		model.addAttribute("leave",leave);
		//已知任务ID，查询ProcessDefinitionEntiy对象，从而获取当前任务完成之后的连线名称
		List<String> outcomeList = workflowService.findOutComeListByTaskId(taskId);
		model.addAttribute("outcomeList", outcomeList);
		//查询所有历史审核人的审核信息
		List<Comment> commentList = workflowService.findCommentByTaskId(taskId);
		model.addAttribute("commentList", commentList);
		model.addAttribute("url", "leave");
		List<User> users = userDao.query(new PageView(),new User());
		model.addAttribute("users", users);
		return "/background/workflow/taskFormUI";
	}
	
	/**
	 *  准备表单数据-----入库单
	 * @return
	 */
	@RequestMapping(value="audit_storage")
	public String audit_storage(HttpServletRequest request, Model model){
		//获取任务ID
		/*String taskId = request.getParameter("taskId");
		model.addAttribute("taskId",taskId);
		//使用任务ID，查找请假单ID，从而获取请假单信息
		BusLeave leave = workflowService.findLeaveBillByTaskId(taskId);
		model.addAttribute("leave",leave);
		//已知任务ID，查询ProcessDefinitionEntiy对象，从而获取当前任务完成之后的连线名称
		List<String> outcomeList = workflowService.findOutComeListByTaskId(taskId);
		model.addAttribute("outcomeList", outcomeList);
		//查询所有历史审核人的审核信息
		List<Comment> commentList = workflowService.findCommentByTaskId(taskId);
		model.addAttribute("commentList", commentList);*/
		model.addAttribute("url", "storage");
		return "/background/workflow/taskFormUI";
	}
	
	/**
	 * 提交任务
	 */
	@RequestMapping(value="submitTask")
	public String submitTask(HttpServletRequest request, MyTask task){
		task.setUsername(SessionContext.get(request).getUserName());
		workflowService.saveSubmitTask(task);
		return "redirect:myTaskList.html";
	}
	
	/**
	 * 查看当前流程图（查看当前活动节点，并使用红色的框标注）
	 */
	@RequestMapping(value="viewCurrentImage")
	public String viewCurrentImage(Model model, MyTask task){
		//任务ID
		String taskId = task.getTaskId();
		/**查看流程图*/
		//使用任务对象获取流程定义ID，查询流程定义对象
		ProcessDefinition pd = workflowService.findProcessDefinitionByTaskId(taskId);
		model.addAttribute("deploymentId", pd.getDeploymentId());
		model.addAttribute("imageName", pd.getDiagramResourceName());
		/**查看当前活动，获取当期活动对应的坐标x,y,width,height*/
		Map<String, Object> map = workflowService.findCoordingByTask(taskId);
		model.addAttribute("acs", map);
		return "/background/workflow/image";
	}
	
	/**
	 * 查看流转记录
	 * @return
	 */
	@RequestMapping(value="hisComment")
	public String hisComment(Model model, MyTask task){
		//获取清单ID
		String id = task.getId() + "";
		String className = task.getPdid();
		//使用请假单ID，查询历史的批注信息
		List<Comment> commentList = workflowService.findLeaveCommentById(id);
		model.addAttribute("commentList", commentList);
		//根据流程定义的key设置url
		if ("BusLeave".equals(className)) {
			//使用请假单ID，查询请假单对象
			BusLeave leave = leaveService.getById(id);
			model.addAttribute("leave", leave);
			model.addAttribute("url", "leave");
		}
		if ("BusStorage".equals(className)) {
			model.addAttribute("url", "storage");
		}
		return "/background/workflow/taskFormHis";
	}
}

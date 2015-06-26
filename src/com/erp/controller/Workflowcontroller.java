package com.erp.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

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

import com.erp.entity.BusLeave;
import com.erp.entity.MyTask;
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
		//1：获取页面传递的部署对象ID和资源图片名称
		//部署对象ID
		String deploymentId = workflowBean.getDeploymentId();
		//资源图片名称
		String imageName = workflowBean.getImageName();
		//2：获取资源文件表（act_ge_bytearray）中资源图片输入流InputStream
		InputStream in = workflowService.findImageInputStream(deploymentId,imageName);
		//3：从response对象获取输出流
		OutputStream out = response.getOutputStream();
		//4：将输入流中的数据读取出来，写到输出流中
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
		//2:查询流程定义的信息，对应表（act_re_procdef）
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
		//2:查询流程定义的信息，对应表（act_re_procdef）
		ProcessDefinition pd = workflowService.findProcessDefinitionListByPdId(pdid);
		//放置到上下文对象中
		model.addAttribute("pd", pd);
		return "/background/workflow/applyFormUI";
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
		//1：从Session中获取当前用户名
		String name = SessionContext.get(request).getUserName();
		//2：使用当前用户名查询正在执行的任务表，获取当前任务的集合List<Task>
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
	public String myApplyList(HttpServletRequest request,Model model,BusLeave busLeave, String pageNow){
		PageView pageView = null;
		if(Common.isEmpty(pageNow)){
			pageView = new PageView(1);
		}else{
			pageView = new PageView(Integer.parseInt(pageNow));
		}
		//查询所有流程定义
		List<ProcessDefinition> pdList = workflowService.findProcessDefinitionList();
		//将所有流程定义，封装到MyTask类
		List<MyTask> tasks = new ArrayList<MyTask>();
		//从session获取当前用户名
		busLeave.setUsername(SessionContext.get(request).getUserName());
		if (null != pdList && pdList.size() > 0) {
			for (ProcessDefinition pd : pdList) {
				String className = pd.getKey();
				String pdname = pd.getName();
				if ("BusLeave".equals(className)) {
					List<BusLeave> leaves = leaveService.query(pageView, busLeave);
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
		//获取任务表单中任务节点的url连接
		String url = workflowService.findTaskFormKeyByTaskId(taskId);
		url = "audit_leave";
		model.addAttribute("taskId", taskId);
		model.addAttribute("url", url);
		return "redirect:" + url + ".html";
	}
	
	/**
	 *  准备表单数据
	 * @return
	 */
	@RequestMapping(value="audit_leave")
	public String audit_leave(HttpServletRequest request, Model model){
		//获取任务ID
		String taskId = request.getParameter("taskId");
		/**一：使用任务ID，查找请假单ID，从而获取请假单信息*/
		BusLeave leave = workflowService.findLeaveBillByTaskId(taskId);
		model.addAttribute("leave",leave);
		/**二：已知任务ID，查询ProcessDefinitionEntiy对象，从而获取当前任务完成之后的连线名称，并放置到List<String>集合中*/
		List<String> outcomeList = workflowService.findOutComeListByTaskId(taskId);
		model.addAttribute("outcomeList", outcomeList);
		/**三：查询所有历史审核人的审核信息，帮助当前人完成审核，返回List<Comment>*/
		List<Comment> commentList = workflowService.findCommentByTaskId(taskId);
		model.addAttribute("commentList", commentList);
		return "/background/workflow/taskFormUI";
	}
	
	/**
	 * 查看申请信息
	 * @return
	 */
	@RequestMapping(value="showForm")
	public String showForm(){
		return "/background/workflow/showForm";
	}
	
	/**
	 * 查看流转记录
	 * @return
	 */
	@RequestMapping(value="approvedHistory")
	public String approvedHistory(){
		return "/background/workflow/approvedHistory";
	}
}

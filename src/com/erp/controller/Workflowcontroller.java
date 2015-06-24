package com.erp.controller;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
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
	public String myTaskList(HttpServletRequest request,Model model,BusLeave busLeave){
		String pdkey = request.getParameter("pdkey");
		busLeave.setUsername(SessionContext.get(request).getUserName());
		List<MyTask> tasks = new ArrayList<MyTask>();
		if ("BusLeave".equals(pdkey)) {
			leaveService.add(busLeave);
			List<BusLeave> leaves = leaveService.query(null, busLeave);
			for (BusLeave leave : leaves) {
				MyTask t = new MyTask();
				t.setId(leave.getId());
				t.setApplyDate(leave.getLeaveDate());
				t.setPdid(pdkey);
				t.setUsername(leave.getUsername());
				t.setPdname(leave.getContent());
				t.setState(leave.getState());
				tasks.add(t);
			}
		}
		model.addAttribute("tasks", tasks);
		return "/background/workflow/myTaskList";
	}
	
	/**
	 * 我的申请查询页面
	 * @return
	 */
	@RequestMapping(value="myApplyList")
	public String myApplyList(){
		return "/background/workflow/myApplyList";
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

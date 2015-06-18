package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/background/workflow/")
public class Workflowcontroller{

	/**
	 * 部署管理首页显示
	 * @return
	 */
	@RequestMapping(value="deployHome")
	public String deployHome(){
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
	 * 跳转至填写申请页面
	 * @return
	 */
	@RequestMapping(value="formTemplateList")
	public String formTemplateList(){
		return "/background/workflow/formTemplateList";
	}
	
	/**
	 * 跳转至填写申请页面
	 * @return
	 */
	@RequestMapping(value="applyFormUI")
	public String applyFormUI(){
		return "/background/workflow/applyFormUI";
	}
	
	/**
	 * 未处理任务页面
	 * @return
	 */
	@RequestMapping(value="myTaskList")
	public String myTaskList(){
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
}

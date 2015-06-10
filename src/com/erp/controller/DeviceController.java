package com.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 */
@Controller
@RequestMapping(value="/background/device/")
public class DeviceController {
	@RequestMapping(value="list")
	public String queryDevice(Model model, String pageNow){
		return "/background/device/list";
	}

}

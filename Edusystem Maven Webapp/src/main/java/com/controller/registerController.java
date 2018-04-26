package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.register;
import com.service.registerService;

@Controller
@RequestMapping("/register")
public class registerController {
	@Autowired
	public registerService registerService;

	@RequestMapping(value = "getUser.do", method = RequestMethod.POST)
	@ResponseBody
	public List<register> getRegister() {
		List<register> list=registerService.getRegister();
		return list;
	}
}

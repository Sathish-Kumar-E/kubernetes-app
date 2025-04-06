package com.project.springboot_kubernetes.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1")
public class MessageController {
	
	@GetMapping("/message")
	public String getMessage() {
		return "Congratulations you successfully deployed your application to kubernetes !!";
	}
	
}

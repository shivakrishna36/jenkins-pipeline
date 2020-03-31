package com.example.pipeline;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@SpringBootApplication
@Controller
public class PipelineApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		String option = args[0];
		SpringApplication.run(PipelineApplication.class, args);
	}

	@RequestMapping(value="/",method = RequestMethod.GET)
	public String home() {
		return "index";
	}
}

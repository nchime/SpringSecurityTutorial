package com.java.springsecurity;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class TestContreoller {
	
	private final Logger LOGGER = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Model model) {
		
		LOGGER.info(" >>>>  test controller ...");
		
		model.addAttribute("data", "한글 입력.."); 
		
		return "index"; 
	}
	
	
	

}

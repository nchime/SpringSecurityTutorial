package com.java.springsecurity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class LoginController {

	// TODO  
	// 참고 사이트 
	// http://syaku.tistory.com/263  (db 연동)
	// http://goodcodes.tistory.com/57 (Spring Security)
	// http://tikongs.tistory.com/103 (Session 관리)
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	 	@RequestMapping(value = "login", method = RequestMethod.GET)
	    public void login(HttpSession session) {
	        logger.info("Welcome login! {}", session.getId());
	    }
	     
	    @RequestMapping(value = "logout", method = RequestMethod.GET)
	    public String logout(HttpSession session) {
	        CustomUserDetails userDetails = (CustomUserDetails)session.getAttribute("userLoginInfo");
	         
	        logger.info("Welcome logout! {}, {}", session.getId(), userDetails.getUsername());
	         
	        session.invalidate();
	        
	        // 로그아웃 처리 후 초기 페이지로 이동 
	        return "redirect:/"; 
	        
	    }
	     
	    @RequestMapping(value = "login_success", method = RequestMethod.GET)
	    public String login_success(HttpSession session, Model model) {
	        CustomUserDetails userDetails = (CustomUserDetails)SecurityContextHolder.getContext().getAuthentication().getDetails();
	         
	        logger.info("Welcome login_success! {}, {}", session.getId(), userDetails.getUsername() + "/" + userDetails.getPassword());
	        session.setAttribute("userLoginInfo", userDetails);
	        
	        Date time = new Date();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
	        

	        model.addAttribute("currentTime", sdf.format(time));
	        model.addAttribute("useruName", userDetails.getUsername());
	        model.addAttribute("useruPassword", userDetails.getPassword());
	        model.addAttribute("id", session.getId());
	        
	        model.addAttribute("creationTime", sdf.format(session.getCreationTime()));
	        model.addAttribute("lastAccessTime", sdf.format(session.getLastAccessedTime()));
	        
	        
			return "main";
	    }
	     
	    @RequestMapping(value = "page1", method = RequestMethod.GET)
	    public void page1() {      
	    }
	     
	    @RequestMapping(value = "login_duplicate", method = RequestMethod.GET)
	    public void login_duplicate() {    
	        logger.info("Welcome login_duplicate!");
	    }
	
	
	
}

package com.java.springsecurity.bbs;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequestMapping(value = "/bbs")
public class ViewController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
    // 게시판 목록 
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String dispBbsList(Model model) {
        logger.info("display view BBS list");
        return "bbs.list";
    }

    // 게시판 상세보기
    // PathVariable 어노테이션을 이용하여 RESTful 방식 적용
    // bbs/1 -> id = 1; id = 게시물 번호로 인식함.
    @RequestMapping("/{idx}")
    public String dispBbsView(@PathVariable int idx, Model model) {
        logger.info("display view BBS view idx = {}", idx);
        return "bbs.view";
    }

    // 게시판 쓰기
    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String dispBbsWrite(Model model) {
        logger.info("display view BBS write");
        return "bbs.write";
    }

	
	
	

}

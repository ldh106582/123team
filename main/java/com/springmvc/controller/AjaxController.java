package com.springmvc.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.springmvc.service.AjaxService;

@Controller
public class AjaxController {
	
	@Autowired
	AjaxService ajaxService;
	
	// product 관리자 아이디확인 함수
	@GetMapping(value="/managerlogin", produces="application/json")
	@ResponseBody
	public String ProductMemberajax(@RequestParam("userId") String userId) {
			System.out.println("product ajax도착");
			System.out.println("userId도착 : " + userId);
	        if(ajaxService.productManager(userId)) {
	            return "true"; // 아이디가 중복되면 true 반환
	        } else {
	            return "false"; // 중복되지 않으면 false 반환
	        }
	    }

	// 소비자 아이디확인 함수
	@GetMapping(value="/login/join/memberid", produces="application/json")
	@ResponseBody
	public String checkMemberId(@RequestParam("userId") String userId) {
	    System.out.println("소비자 ajax 도착");
	    if(ajaxService.member(userId)){
	        return "true";
	    } else {
	        return "false";
	    }
	}

	
	// 로그인 성공 실패를 알려주는 함수
	@PostMapping(value="/confirm", produces="application/json")
	@ResponseBody
	public String LoginConfirm(@RequestParam("userId") String userId,
							   @RequestParam("userPw") String userPw) {
		
		System.out.println("여긴 로그인 함수 ajax");
		
	    if ("correctId".equals(userId) && "correctPassword".equals(userPw)) {
	        return "success";
	    } else {
	        return "fail";
	    }
	}


}
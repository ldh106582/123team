package com.springmvc.controller;

import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalMember;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.domain.Product;
import com.springmvc.domain.ProductMember;
import com.springmvc.service.PersonService;

@Controller
@RequestMapping("/login")
public class PersonController {
   
   @Autowired
   private PersonService personService;
   
   
   // 통합 회원가입페이지로 이동
   @GetMapping("/Allmember")
   public String Allmemger() {
      return "/member/AllManager";
   }
   
   // 회원가입 페이지로 이동
   @GetMapping("/add")
   public String GetCreatePerson(@ModelAttribute("Newmember") Person person, HttpServletRequest request) {
      String type = request.getParameter("type");
      HttpSession session = request.getSession();
      session.setAttribute("type", type);
      
      return "member/AddMember";
   }
   
   // 회원가입 파라미터 값 받아옴
   @PostMapping("/add")
   public String SetCreatePerson(@ModelAttribute("Newmember")Person person, Model model, HttpServletRequest request) {
      HttpSession session = request.getSession();
      String type = (String)session.getAttribute("type");
      System.out.println("add post : " + type);
      person.setType(type);
      
      // 회원가입 시 db에 넣어주는 함수
      personService.setCreatPerson(person);
   
      session.invalidate();
      
      return "redirect:/login";
   }

   
   // 로그인 페이지로 이동
   @GetMapping
   public String SetReadPerson(@ModelAttribute("success")Person person, HttpServletRequest request) { 
      return "Login";
   }
   
   // 로그인 파라미터값 받아옴
   @PostMapping
   public String GetReadPerson(@ModelAttribute("success") Person person,
                        Model model,
                        Pet pet, HttpServletRequest request) {
      
      // update에서 db로 가져가 조회할 session
      // 1. 조원들에게 넘겨줄 객체 2. personId와 pw를 가져옴
      Person id = personService.loginSucess(person);
      HttpSession session = request.getSession();
      
      session.setAttribute("id", id);
      session.setAttribute("personId", id.getPersonId());
      session.setAttribute("type", id.getType());
      
      String type = (String) id.getType();
      System.out.println("로그인 타입 : " + type);
      String personId = (String)person.getPersonId();
      
      if("p".equals(type)) 
      {
         System.out.println("product입니다.");
         // 프로덕트 매니저가 로그인할 때 가져올 데이터
         ProductMember productMember = personService.getPM(personId);
         session.setAttribute("persId", productMember);
         // 해당 프로덕트 매니저의 상품을 가죠오는 데이터
         List<Product> listOfProduct = personService.getProduct(personId);
         session.setAttribute("listOfProduct", listOfProduct);
         
         // pet이름 정보를 가져옴 수정필요함 없애도 상관없는 함수
         List<Pet> petName = personService.getPetName(person);
         System.out.println("petName : " + petName);
         session.setAttribute("petName", petName);

         // pet 아이디 정보를 가져옴
         List<Pet> petId = personService.getPetId(pet);
         session.setAttribute("petId", petId);
         
         return "redirect:/products";
      
      } 
      else if("h".equals(type)) 
      {
         // 동물병원 의사가 로그인할 때 가져올 데이터
         HospitalMember hospitalMember = personService.getHM(personId);
         session.setAttribute("personId", hospitalMember);
         // 해당 동물병원의사의 병원정보를 가죠오는 데이터
         List<Hospital> listOfHospital = personService.getHopital(personId);
         session.setAttribute("listOfHospital", listOfHospital);
         
         // pet이름 정보를 가져옴 수정필요함 없애도 상관없는 함수
         List<Pet> petName = personService.getPetName(person);
         System.out.println("petName : " + petName);
         session.setAttribute("petName", petName);

         // pet 아이디 정보를 가져옴
         List<Pet> petId = personService.getPetId(pet);
         session.setAttribute("petId", petId);
         
         return "all_Hospital/hospitals";
      } 
      else 
      {

         // pet이름 정보를 가져옴 수정필요함 없애도 상관없는 함수
         List<Pet> petName = personService.getPetName(person);
         System.out.println("petName : " + petName);
         session.setAttribute("petName", petName);

         // pet 아이디 정보를 가져옴
         List<Pet> petId = personService.getPetId(pet);
         session.setAttribute("petId", petId);
      
      
      return "/member/Mypage";
      }
   }
   
   // 회원 수정 페이지로 이동
   @GetMapping("/update")
   public String GetUpdatePerson(@ModelAttribute("addmemberupdate") Person person,
                          @RequestParam("id") String id,
                          HttpServletRequest request, Model model) {
      
      Person u_person = personService.findPersonById(id);
      String type = u_person.getType();
      
      HttpSession session = request.getSession();
      // product manager 마이페이지를 수정하는 곳
      if ("p".equals(type)) 
      {
         ProductMember productMember = (ProductMember) session.getAttribute("persId");
         session.setAttribute("productMember", productMember);
         return "/member/ManagerUpdate";
         
      } 
      else if("h".equals(type)) 
      {
         HospitalMember hospitalMember = (HospitalMember)session.getAttribute("persId");
         session.setAttribute("hospitalMember", hospitalMember);
      } 
      else 
      {
         model.addAttribute("u_person", u_person);
      }
      
      return "member/update";
   }
   
   // 회원 정보 수정 파라미터값 받아옴
   @PostMapping("/update")
   public String SetUpdatePerson(@ModelAttribute("addmemberupdate") Person person, 
                          @ModelAttribute("managerupdate") ProductMember productMember,
                          @ModelAttribute("hospitalupdate") HospitalMember hospitalMember,
                          HttpServletRequest request) {
       
      System.out.println("사용자 ID: " + person.getPersonId());
       

       HttpSession session  = request.getSession();
       String type = (String) session.getAttribute("id");
       
       if("p".equals(type)) 
       {    // product manager 마이페이지를 수정하는 곳
          personService.SetUpdatePM(productMember);
          // product manager person 테이블을 수정하는 곳
          personService.SetUpdatePr(productMember);
       }
       else if("h".equals(type)) 
       { // hospital manager 마이페이지를 수정하는 곳
          personService.SetUpdateHM(hospitalMember);
           // hospital manager person 테이블을 수정하는 곳
          personService.SetUpdatePH(hospitalMember);
       }
       else 
       {
          personService.SetUpdatePerson(person);
       }
       
       return "redirect:/login";
   }
   
   //회원삭제 페이지
   @RequestMapping(value="/delete")
   public String SetDeletePerson(@RequestParam("id") String personId) {
      System.out.println("person delete문 controller 도착");
      // 
      personService.SetDeletePerson(personId);
      
      
      
      
      return "redirect:/login";
   }
   

   //로그아웃 페이지
   @RequestMapping(value = "/logout", method = RequestMethod.GET)
   public String logout(HttpServletRequest request, HttpServletResponse response, SessionStatus sessionStatus) {
      System.out.println("로그아웃 페이지로 이동");
      
      // 세션 무효시킴
       sessionStatus.setComplete();
       HttpSession session = request.getSession();
       session.invalidate();

       System.out.println("==============로그아웃");
      // 쿠키제거
       Cookie[] cookies = request.getCookies();
       if (cookies != null) {
           for (Cookie cookie : cookies) {
               cookie.setMaxAge(0);
               response.addCookie(cookie);
           }
       }
    
       return "redirect:/login";
   }
   
   @GetMapping("/mypage")
   public String mypage(HttpServletRequest request, Model model) {
      HttpSession session = request.getSession();
      Person person = (Person) session.getAttribute("id");
      session.setAttribute("person", person);
      
      List<Pet> petName = (List<Pet>) session.getAttribute("petName");
      model.addAttribute("petName", petName);
      
      return "member/Mypage";
   }
}
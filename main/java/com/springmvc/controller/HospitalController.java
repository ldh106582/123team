package com.springmvc.controller;

import java.util.ArrayList;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.mysql.cj.Session;
import com.springmvc.domain.ENBoard;
import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalBooking;
import com.springmvc.domain.HospitalReview;
import com.springmvc.domain.Pet;
import com.springmvc.service.BookingService;
import com.springmvc.service.HospitalReviewService;
import com.springmvc.service.HospitalService;
import java.net.*;
import java.io.*;
import javax.net.ssl.HttpsURLConnection;
import org.json.*;

@Controller
@RequestMapping("/hospitals")
public class HospitalController {

	@Autowired
	HospitalService hospitalService;
	
	@Autowired
	HospitalReviewService reviewService;
	
	@Autowired
	BookingService bookingService;
	
	@GetMapping
	public String getAllhospitals(Model model) 
	{
		model.addAttribute("hospitals",hospitalService.getAllhospitals());
		
		return "all_Hospital/hospitals";
	}

	@GetMapping("hospital")
	public String hospital(@RequestParam("hid") String hid,Model model,HttpServletRequest request)
	{
		Hospital hospital = hospitalService.gethosptialByhId(hid);
		model.addAttribute("hospital",hospital);
//		병원리뷰
		model.addAttribute("reviews",reviewService.getAllReviews(hid));
		return "all_Hospital/hospital";
	}

	@GetMapping("/create")
	public String hospitalcreateform(@ModelAttribute("hospital")Hospital hospital) 
	{
		return "all_Hospital/addform";
	}
	
	@PostMapping("/create")
	public String hospitalcreate(@ModelAttribute("hospital")Hospital hospital,
								HttpSession session,Model model,HttpServletRequest request) 
	{
		String realpath = request.getSession().getServletContext().getRealPath("/resources/images");
		String personId = (String) session.getAttribute("personId");
		hospital.setPersonId(personId);
		hospitalService.addhospital(hospital,realpath);
		return "redirect:/hospitals";
	}
	
	@GetMapping("update")
	public String hospitalupdateform(@RequestParam("hid")String hid,@ModelAttribute("hospital")Hospital hospital,Model model)
	{
		model.addAttribute("hospital",hospitalService.gethosptialByhId(hid));
		return "all_Hospital/updateform";
	}
	
	@PostMapping("update")
	public String hospitalupdate(@RequestParam("hid")String hid,@ModelAttribute("hospital")Hospital hospital) {
		hospitalService.updateHospital(hospital,hid);
		return "redirect:/hospitals/hospital?hid="+hid;
	}
	
	@GetMapping("delete")
	public String hospitaldelete(@RequestParam("hid")String hid) {
		hospitalService.deleteHospital(hid);
		return "redirect:/hospitals";
	}
	
//	리뷰작성
	@GetMapping("addreview")
	public String addreviewform(@ModelAttribute("review")HospitalReview review,@RequestParam("hid")String hid,HttpServletRequest request) {
		request.setAttribute("hid", hid);
		return "all_Hospital/addReviewform";
	}
	
	@PostMapping("addreview")
	public String addreview(@ModelAttribute("review")HospitalReview review,@RequestParam("hid")String hid,HttpSession session) {
		String personId = (String) session.getAttribute("personId");
		review.setPersonId(personId);
		review.setHid(hid);
		reviewService.addreview(review);
		
		return "redirect:/hospitals/hospital?hid="+hid;
	}
//	리뷰수정
	@GetMapping("editreview")
	public String editreviewform(@ModelAttribute("review")HospitalReview review,@RequestParam("reviewId")String reviewId,HttpServletRequest request,Model model) {
		model.addAttribute("review", reviewService.getReviewByID(reviewId));
		return "all_Hospital/updateReviewform";
	}
	
	@PostMapping("editreview")
	public String editreview(@ModelAttribute("review")HospitalReview review,@RequestParam("reviewId")String reviewId) {
		HospitalReview hospitalReview =reviewService.getReviewByID(reviewId);
		String hid = hospitalReview.getHid();
		reviewService.updatereview(review,reviewId);
		return "redirect:/hospitals/hospital?hid="+hid;
	}
	
//	리뷰삭제
	@GetMapping("deletereview")
	public String deletereview(@RequestParam("reviewId")String reviewId) {
		HospitalReview hospitalReview =reviewService.getReviewByID(reviewId);
		String hid = hospitalReview.getHid();
		reviewService.deletereview(reviewId);
		System.out.println(reviewId);
		return "redirect:/hospitals/hospital?hid="+hid;
	}
//	예약조회
	@GetMapping("mybookList")
	public String mybookList(@RequestParam("personId") String personId,Model model,HttpSession session) {
		model.addAttribute("booklist", bookingService.getMyBookList(personId));
		List<Pet> list = (List<Pet>) session.getAttribute("petId");
		model.addAttribute("petlist",list);
		return "all_Hospital/mybookList";
	}
//	병원예약하기
	@GetMapping("addbook")
	public String addbookform(@ModelAttribute("booking") HospitalBooking booking,@RequestParam("hid")String hid,Model model,HttpSession session) {
		model.addAttribute("hospital", hospitalService.gethosptialByhId(hid));
		
		return "all_Hospital/addbookform";
	}
	@PostMapping("addbook")
	public String addbook(@ModelAttribute("booking") HospitalBooking booking,HttpServletRequest request,HttpSession session) {
		
		
		String personId = (String) session.getAttribute("personId");

		
		String registDay = request.getParameter("registDay");
		String mid = request.getParameter("mid");
		String hid = request.getParameter("hid");
		String hospitalName = request.getParameter("hospitalName");
		
		booking.setPersonId(personId);
		booking.setRegistDay(registDay);
		booking.setMid(mid);
		booking.setHid(hid);
		booking.setHospitalName(hospitalName);
		
		
		
		bookingService.addbook(booking);
		
		return "redirect:/hospitals/mybookList?personId="+personId;
	}
//	날짜 변경 
	@PostMapping("editbook")
	public String editbook(HttpSession session,@RequestParam("bid") String bid,@RequestParam("registDay") String registDay) 
	{
		String personId = (String) session.getAttribute("personId");
		bookingService.editbook(bid,registDay);
		return "redirect:/hospitals/mybookList?personId="+personId;
	}
//	예약 취소
	@GetMapping("deletebook")
	public String deletebook(@RequestParam("bid") String bid,HttpSession session) 
	{
		String personId = (String) session.getAttribute("personId");
		bookingService.deletebook(bid);
		return "redirect:/hospitals/mybookList?personId="+personId;
	}
	
//	 모든 신청 보기
	@GetMapping("manageapps")
	public String manageapps(Model model,HttpSession session,HttpServletRequest request) {
		System.out.println("======================="); 
		String personId = (String) session.getAttribute("personId");
		System.out.println("=======================1");
		 List<HospitalBooking> list = bookingService.getPermisionList(personId);
		 model.addAttribute("applists",list);
		 if(list.isEmpty()) {
			 request.setAttribute("nothing", "승인할 것이 없어요");
		 }
		 return "all_Hospital/permitLists"; 
	}	 
	
//	예약 승인||거절
	 @GetMapping("decision")
	 public String decision(@RequestParam("dec") String dec,@RequestParam("bid") String bid){
		 bookingService.updateState(dec,bid);
		 return "redirect:/hospitals/manageapps";
	 }
	 
//		체험공고글 검색
		@GetMapping("/selectbytitle")
		public String selectboardbytitle(Model model,HttpServletRequest request) {
			String title = (String) request.getParameter("title");
			System.out.println(title);
			if(title.equals(null)||title.equals("")||title.equals(" ")) {
				return "redirect:/hospitals";
			}
			System.out.println(title);
			List<Hospital> hospitallist = hospitalService.gethospitalsByTitle(title);
			if(hospitallist.isEmpty()) {
				//검색 결과가 없을때
				return "all_Hospital/exceptionpage";
			}
			model.addAttribute("hospitals",hospitallist);
			return "all_Hospital/hospitals";
		}
//		지도 띄우기
}

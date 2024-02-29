package com.springmvc.controller;

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
import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalBooking;
import com.springmvc.domain.HospitalReview;
import com.springmvc.domain.Pet;
import com.springmvc.service.BookingService;
import com.springmvc.service.HospitalReviewService;
import com.springmvc.service.HospitalService;

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
	public String hospital(@RequestParam("hid") String hid,Model model)
	{
		model.addAttribute("hospital",hospitalService.gethosptialByhId(hid));
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
	public String hospitalcreate(@ModelAttribute("hospital")Hospital hospital,HttpSession session,Model model) 
	{
		String personId = (String) session.getAttribute("personId");
		hospital.setPersonId(personId);
		hospitalService.addhospital(hospital);
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
	public String mybookList(@RequestParam("personId") String personId,Model model) {
		model.addAttribute("booklist", bookingService.getMyBookList(personId));
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
		
		System.out.println(booking.getPetName());

		
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
}

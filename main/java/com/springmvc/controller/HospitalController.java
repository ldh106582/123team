package com.springmvc.controller;

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
import com.springmvc.service.HospitalService;

@Controller
@RequestMapping("/hospitals")
public class HospitalController {

	@Autowired
	HospitalService hospitalService;
	
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
}
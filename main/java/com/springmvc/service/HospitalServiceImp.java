package com.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalMember;
import com.springmvc.repository.HospitalRepository;

@Service
public class HospitalServiceImp implements HospitalService{
	@Autowired
	HospitalRepository hospitalRepository;

	@Override
	public List<Hospital> getAllhospitals() {
		return hospitalRepository.getAllhospitals();
	}

	@Override
	public Hospital gethosptialByhId(String hid) {
		return hospitalRepository.gethosptialByhId(hid);
	}

	@Override
	public void addhospital(Hospital hospital, String realpath) {
		hospitalRepository.addhospital(hospital, realpath);
	}

	@Override
	public void updateHospital(Hospital hospital, String hid,String realpath) {
		hospitalRepository.updateHospital(hospital,hid,realpath);
	}

	@Override
	public void deleteHospital(String hid) {
		hospitalRepository.deleteHospital(hid);
		
	}

	@Override
	public List<Hospital> gethospitalsByTitle(String title) {
		return hospitalRepository.gethospitalsByTitle(title);
	}
	
	

	
	
}

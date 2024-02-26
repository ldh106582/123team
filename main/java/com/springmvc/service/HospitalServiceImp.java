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
	
	

	
	
}

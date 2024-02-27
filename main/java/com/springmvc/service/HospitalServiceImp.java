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
	public void addhospital(Hospital hospital) {
		hospitalRepository.addhospital(hospital);
	}

	@Override
	public void updateHospital(Hospital hospital, String hid) {
		hospitalRepository.updateHospital(hospital,hid);
	}

	@Override
	public void deleteHospital(String hid) {
		hospitalRepository.deleteHospital(hid);
		
	}
	
	

	
	
}

package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Hospital;

public interface HospitalService {

	List<Hospital> getAllhospitals();

	Hospital gethosptialByhId(String hid);

	void addhospital(Hospital hospital, String realpath);

	void updateHospital(Hospital hospital, String hid,String realpath);

	void deleteHospital(String hid);

	List<Hospital> gethospitalsByTitle(String title);

}

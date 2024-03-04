package com.springmvc.service;

import java.util.List;

import com.springmvc.domain.Hospital;

public interface HospitalService {

	List<Hospital> getAllhospitals();

	Hospital gethosptialByhId(String hid);

	void addhospital(Hospital hospital);

	void updateHospital(Hospital hospital, String hid);

	void deleteHospital(String hid);

	List<Hospital> gethospitalsByTitle(String title);

}

package com.springmvc.repository;

import java.util.List;

import com.springmvc.domain.Hospital;

public interface HospitalRepository {

	List<Hospital> getAllhospitals();

	Hospital gethosptialByhId(String hid);

	void addhospital(Hospital hospital, String realpath);

	void updateHospital(Hospital hospital, String hid);

	void deleteHospital(String hid);

	List<Hospital> gethospitalsByTitle(String title);

}

package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.springmvc.domain.Pet;
import com.springmvc.domain.PetChart;
import com.springmvc.domain.PetWeight;

@Repository
public class PetCardRepositoryImp implements PetCardRepository{
	
	 public PetCardRepositoryImp() {
		super();
		// TODO Auto-generated constructor stub
	}

	private JdbcTemplate template;

	 @Autowired
	     public void setJdbctemplate(DataSource dataSource) {
	         this.template = new JdbcTemplate(dataSource);
	     }

	 List<PetWeight> listOfPetCard = new ArrayList<PetWeight>();
	 
	 // 1. 반려동물 이름과 id를 가져옴
	@Override
	public Pet getCreatPetCard(String petId) {
		
		String SQL = "select * from Pet where PetId=?";
		Pet petName = template.queryForObject(SQL, new Object[] {petId}, new PetDBConnector());
		System.out.println("petName : " + petName);
		return petName;
	}
	
	//  2. 반려동물 진료 기록 가져옴
	@Override
	public List<PetWeight> getReadPetCard(String petId) {
		System.out.println("PetCard repository get ReadPetCard 도착!");
		String SQL = "select * from PetChart where PetId=?";
		System.out.println("PetCard repository get ReadPetCard SQL 도착!");
	    List<PetWeight> petName = template.query(SQL, new Object[] {petId}, new PetWeightDBConnector());
	    System.out.println("petName Arr : " + petName );
	    return petName;
	}
	
	// 동물의 몸무게를 가져오는 함수
	@Override
	public List<PetWeight> getWeghitPetCard(String petId) {
		
		String SQL = "select * from PetWeight where petId=?";
		List<PetWeight> listOfPetWeight = template.query(SQL, new Object[] {petId}, new PetWeightDBConnector());
		return listOfPetCard;
	}
	
	// 반려동물 진료 기록을 가져옴
	@Override
	public List<PetChart> getChartPetCard(String petId) {
		String SQL = "select * from PetChart where PetId=?";
		List<PetChart> listOfPetChart = template.query(SQL, new Object[] {petId}, new PetChartDBConnector());
		return listOfPetChart;
	}
	
	// 예방 접종 기록을 가져옴
	@Override
	public List<PetVaccination> getVaccinationPetCard(String petId) {
		String SQL = "select * from PetVaccination where PetId=?";
		List<PetVaccination> listOfpetVaccination = template.query(SQL, new Object[] {petId}, new PetVaccinationDBConnector());
		return listOfpetVaccination;
	}
	
	// 반려동물의 수술 기록을 가져옴
	@Override
	public List<PetSurgery> getPetSurgery(String petId) {
		String SQL = "select * from PetSurgery where PetId=?";
		List<PetSurgery> listOfPetSurgery = template.query(SQL, new Object[] {petId}, new PetSurgeryDBConnector());
		return listOfPetSurgery;
	}
	
	// 동물의 입원 기록을 가져옴
	@Override
	public List<PetSurgeryAfter> getPetSurgeryAfter(String petId) {
		String SQL = "select * from PetSurgeryAfter where PetId=?";
		List<PetSurgeryAfter> listOfPetSurgeryAfter = template.query(SQL, new Object[] {petId}, new PetSurgeryAfterDBConnector());
		return listOfPetSurgeryAfter;
	}
	
	//동물의 정보를 가져오는 함수
	@Override
	public Pet getPetList(String petId) {
		String SQL = "select * from Pet where PetId=?";
		Pet petList = template.queryForObject(SQL, new Object[] {petId}, new PetDBConnector());

	    return petList;
	}
	

	



	// 동물의 몸무게를 넣는 함수
	@Override
	public void setWeghitPetCard(PetWeight petWeight) {
			String SQL = "insert into petCard(PetWeghitDate ,PetWeghit, PetId) value(?,?,?)";
			template.update(SQL, new Object[] {petWeight.getPetWeghitDate(), petWeight.getPetWeghit(), petWeight.getPetId()}, new PetWeightDBConnector());
	}



	
	


	

	
	
	 
	 
}

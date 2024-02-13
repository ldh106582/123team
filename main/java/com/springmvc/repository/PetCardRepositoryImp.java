package com.springmvc.repository;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.springmvc.domain.Pet;
import com.springmvc.domain.PetCard;

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

	 List<PetCard> listOfPetCard = new ArrayList<PetCard>();
	 
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
	public List<PetCard> getReadPetCard(String petId) {
		System.out.println("PetCard repository get ReadPetCard 도착!");
		String SQL = "select * from PetCard where petId=?";
		System.out.println("PetCard repository get ReadPetCard SQL 도착!");
	    List<PetCard> petName = template.query(SQL, new Object[] {petId}, new PetCardDBConnector());
	    System.out.println("petName Arr : " + petName );
	    return petName;
	}
	
	// 동물의 몸무게를 가져오는 함수
	@Override
	public List<PetCard> getWeghitPetCard(PetCard petId) {
			String SQL = "insert into petCard(PetWeghit, PetId) value(?,?)";
			template.update(SQL, new Object[] {petId.getPetWeghit(),petId.getPetId()}, new PetCardDBConnector());
			
			String petSQL = "select * from PetCard where PetId=?";
			// List<PetCard> listOfPetCard = template.queryForObject(petSQL, new Object[] {petId.petId(), petId.petWeghit()}, new PetCardDBConnector());
			listOfPetCard.add(petId);
			
		return listOfPetCard;
	}

	@Override
	public void setCreatPetCard(PetCard petCard) {
		String SQL = "select count(*) from Pet where PetId=?";
		int intNum = template.queryForObject(SQL, Integer.class, petCard.getPetId());
		if(intNum != 0) {
			String petCardSQL = "insert into PetCard(petCard, petWeghit, petChartDate, petChart, petChartContent, petSurgeryDate, petSurgeryName, petSurgeryContent, petSurgeryDateAfter, petSurgeryContentAfter, petVaccinationDate, petVaccination, petVaccinationCotent, petId) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			 template.update(petCardSQL, petCard.getPetCard(), petCard.getPetWeghit(), petCard.getPetChartDate(), petCard.getPetChart(), petCard.getPetChartContent(), petCard.getPetSurgeryDate(), petCard.getPetSurgeryName(), petCard.getPetSurgeryContent(), petCard.getPetSurgeryDateAfter(), petCard.getPetSurgeryContentAfter(), petCard.getPetVaccinationDate(), petCard.getPetVaccination(), petCard.getPetVaccinationCotent(), petCard.getPetId());
		} else {
			System.out.println("petcard create 실패");
		}
	}


	
	// 반려동물 진료 기록 넣어줌
	
	
	 
	 
}

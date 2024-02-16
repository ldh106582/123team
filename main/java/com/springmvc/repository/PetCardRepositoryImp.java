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
import com.springmvc.domain.PetSurgery;
import com.springmvc.domain.PetVaccination;
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
		String SQL = "select * from PetWeight inner join Pet on PetWeight.PetId =  Pet.PetId;";
		System.out.println("PetCard repository get ReadPetCard SQL 도착!");
	    List<PetWeight> petName = template.query(SQL, new Object[] {petId}, new PetWeightDBConnector());
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

	public List<PetWeight> getWeghitPetCard(String petId) {
		System.out.println("몸무게 가져오는 리파지 토리");
		String SQL = "select * from PetWeight where petId=?";
		List<PetWeight> listOfPetWeight = template.query(SQL, new Object[] {petId}, new PetWeightDBConnector());
		System.out.println("listOfPetWeight : " + listOfPetWeight);
		return listOfPetWeight;
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
		 String SQL ="insert into PetWeight(PetWeightNum ,PetWeightDate, PetWeight, PetId) values(?,?,?,?)";
		 template.update(SQL, new Object[] {petWeight.getPetWeightNum(), petWeight.getPetWeightDate(), petWeight.getPetWeight(), petWeight.getPetId()}); 
	 }

	// 동물의 진료기록을 넣는 함수
	@Override
	public void setChartPetCard(PetChart petChart) {
		 String SQL ="insert into PetChart(PetChartNum ,petChartDate , petChart, petChartContent , PetId ) values(?,?,?,?,?)";
		 template.update(SQL, new Object[] {petChart.getPetChartNum(), petChart.getPetChartDate(),  petChart.getPetChart(), petChart.getPetChartContent(), petChart.getPetId()});
		
	}

	// 동물의 예방접종기록을 넣는 함수
	@Override
	public void setVaccinationPetCard(PetVaccination petVaccination) {
		 String SQL ="insert into petVaccination(petVaccinationNum ,petVaccinationDate  , petVaccination , petVaccinationCotent  , PetId ) values(?,?,?,?,?)";
		 template.update(SQL, new Object[] {petVaccination.getPetVaccinationNum(), petVaccination.getPetVaccinationDate(), petVaccination.getPetVaccination(), petVaccination.getPetVaccinationCotent(),   petVaccination.getPetId()});
	}

	// 동물의 수술기록을 넣는 함수
	@Override
	public void setPetSurgery(PetSurgery petSurgery) {
		String SQL ="insert into PetSurgery(PetSurgeryNum ,PetSurgeryDate  , PetSurgeryName , PetSurgeryContent  , PetId ) values(?,?,?,?,?)";
		 template.update(SQL, new Object[] {petSurgery.getPetSurgeryNum(), petSurgery.getPetSurgeryDate(), petSurgery.getPetSurgeryName(),  petSurgery.getPetSurgeryContent(),  petSurgery.getPetId()});
	}

	// 동물의 입원기록을 넣는 함수
	@Override
	public void setPetSurgeryAfter(PetSurgeryAfter petSurgeryAfter) {
		String SQL ="insert into PetSurgeryAfter(PetSurgeryAfterNum ,PetSurgeryDateAfter , PetSurgeryContentAfter, PetId ) values(?,?,?,?)";
		 template.update(SQL, new Object[] {petSurgeryAfter.getPetSurgeryAfterNum(), petSurgeryAfter.getPetSurgeryAfterDate(), petSurgeryAfter.getPetSurgeryAfterContent(),  petSurgeryAfter.getPetId()});
		
	}

	// 동물의 몸무게를 제거하는 함수
	@Override
	public void getDeleteWeghitPetCard(String petid, int petWeightNumInt) {
		String SQL ="delete from PetWeight where PetId=? and PetWeightNum=?";
		this.template.update(SQL, petid, petWeightNumInt);
		
	}
	
	// 동물의 진료 기록을 삭제하는 함수
	@Override
	public void getDeletePetCard(String petid, int petChartNumInt) {
		String SQL ="delete from PetChart where PetId=? and PetChartNum=?";
		this.template.update(SQL, petid, petChartNumInt);
	} 
	
	// 동물의 백신기록을 제거하는 함수
	@Override
	public void getDeleteVaccinationPetCard(String petid, int petVaccinationNumInt) {
		String SQL ="delete from petVaccination where PetId=? and PetVaccinationNum=?";
		this.template.update(SQL, petid, petVaccinationNumInt);
		
	}
	// 동물의 수술기록을 삭제하는 함수
	@Override
	public void getDeleteSurgeryPetCard(String petid, int petSurgeryNumInt) {
		String SQL ="delete from PetSurgery where PetId=? and PetSurgeryNum=?";
		this.template.update(SQL, petid, petSurgeryNumInt);
		
	}
	
	// 동물의 입원 기록을 삭제하는 함수
	@Override
	public void getDeleteSurgeryAfterPetCard(String petid, int petSurgeryAfterNumInt) {
		String SQL ="delete from PetSurgeryAfter where PetId=? and PetSurgeryAfterNum=?";
		this.template.update(SQL, petid, petSurgeryAfterNumInt);
	}
	
	// 몸무게 데이터를 수정하기 전 호출하는 함수
	@Override
	public List<PetWeight> getWeghitUpdatePetCard(int weghitNum) {
		String SQL = "select * from PetWeight where PetWeightNum=?";
		List<PetWeight> listOfPetWeight = template.query(SQL, new Object[] {weghitNum}, new PetWeightDBConnector());

		return listOfPetWeight;
	}




	
	

	
	
}



















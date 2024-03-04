package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import com.springmvc.controller.ManagerController;
import com.springmvc.domain.type;
import com.springmvc.domain.Hospital;
import com.springmvc.domain.HospitalMember;
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
import com.springmvc.domain.Product;
import com.springmvc.domain.ProductMember;

@Repository
public class PersonRepositoryImp implements  PersonRepository{

	 public PersonRepositoryImp() {
		super();
		// TODO Auto-generated constructor stub
	}
	 
	 private JdbcTemplate template;
	List<Person> personlist = new ArrayList<Person>();
 
	@Autowired
     public void setJdbctemplate(DataSource dataSource) {
         this.template = new JdbcTemplate(dataSource);
     }
	 
	 // create문
	@Override
	public void setCreatPerson(Person person) 
	{
		System.out.println("personrepository");
		
		String SQL = "INSERT INTO Person(PersonId, PersonPw, PersonEmail, PersonAddress, PersonName, PersonBirth,PersonSex, PersonPhone, Type)" + "VALUES(?,?,?,?,?,?,?,?,?)";
		template.update(SQL, person.getPersonId(), person.getPersonPw(), person.getPersonEmail(), person.getPersonAddress(),
						person.getPersonName(), person.getPersonBirth(),  person.getPersonSex(), person.getPersonPhone(), person.getType());
	}

	//update전 person 데이터를 보여줌
	@Override
	public Person loginSucess(Person person) {
		Person personID = null;
		String SQL =  "select count(*) from Person where PersonId=?";
		int rowNum = template.queryForObject(SQL, Integer.class, person.getPersonId());
		System.out.println("personUpdate : " + rowNum);
		if(rowNum != 0) {
			SQL = "select * from Person where PersonId=?";
			personID = template.queryForObject(SQL, new Object[] {person.getPersonId()}, new PersonDBConnector());
		}
		if(personID == null) {
			System.out.println("아이디가 없습니다.");
		}
		return personID;
	}

	// update 수정한 값을 db에 넣음
	@Override
	public void SetUpdatePerson(Person person) {
		if(person.getPersonId()!=null) {
			 String SQL = "update Person set personId = ?, personPw = ?, personEmail = ?, personAddress = ?, personName = ?, personBirth = ?, personSex = ?,  personPhone = ?, Type=? where personId = ?";
		     template.update(SQL, person.getPersonId(), person.getPersonPw(), person.getPersonEmail(), person.getPersonAddress(),
		    		 			person.getPersonName(), person.getPersonBirth(), person.getPersonSex(), person.getPersonPhone(), person.getType());
		}else {
				System.out.println("person 아이디가 없습니다.");
		}
	}
	
	// delete 아이디를 삭제하는함수
	@Override
	public void SetDeletePerson(String personId) {
		String SQL = "delete from Person where personId=?";
		this.template.update(SQL, personId);
	}

	// pet 주인의 id값을 가져온 후 pet db에서 이름을 가져옴
	@Override
	public List<Pet> getPetName(Person person) {
		List<Pet> petList = new ArrayList<Pet>();
		
		String SQL = "select count(*) from Pet where personId=?";
		Integer petCount = template.queryForObject(SQL, new Object[] {person.getPersonId()}, Integer.class);
		System.out.println("petCount : " + petCount);

	    String SQLPersonId = "select * from Pet where personId=?";
	    List<Pet> pet = template.query(SQLPersonId, new Object[] {person.getPersonId()}, new PetDBConnector());
	    petList.addAll(pet);
			
		return petList;
	}
	// 동물의 정보를 수정하기 전 정보를 보여주는 함수
	@Override
	public List<Pet> getPetId(Pet pet) {
		List<Pet> petList = new ArrayList<Pet>();
		String SQLPersonId = "select * from Pet where personId=?";
		petList = template.query(SQLPersonId, new Object[] {pet.getPersonId()}, new PetDBConnector());
		
		return petList;
	}
	
	// update에서 사용할 정보
	@Override
	public Person findPersonById(String id) {
		String SQL = "select count(*) from Person where PersonId=?";
		Integer perCount = template.queryForObject(SQL, Integer.class, id);
		
		System.out.println("perCount : " + perCount);
		Person personId = null;
		if(perCount != 0) {
			
			String personSQL = "select * from Person where personId=?";
			personId = template.queryForObject(personSQL, new Object[] {id}, new PersonDBConnector());
		} else {
			System.out.println("데이터가 없습니다.");
		}
		return personId;
	}
	// 프로덕트 매니저가 로그인할 때 가져올 데이터
	@Override
	public ProductMember getPM(String personId) {
		String SQL = "select count(*) from ProductMember where personId = ?";
		Integer intNum = template.queryForObject(SQL, Integer.class, personId);
		ProductMember productMember = null;
		if(intNum != 0) {
			SQL = "select * from ProductMember where personId=?";
			
			return template.queryForObject(SQL, new Object[] {personId}, new ProductMemberDBConnector());
		}
		System.out.println("pm정보가 존재하지 않습니다.");
		return null;
	}
	// 해당 프로덕트 매니저의 상품을 가죠오는 데이터
	@Override
	public List<Product> getProduct(String personId) {
		String SQL = "select * from Product where personId = ?";
		//return template.query(SQL, new Object[] {personId}, new ProductDBConnector());
		return template.query(SQL, new Object[] {personId}, new ProductRowMapper());
	}
	
	// 동물병원 의사가 로그인할 때 가져올 데이터

	@Override
	public HospitalMember getHM(String personId) {
		String SQL = "select count(*) from HospitalMember where personId = ?";
		Integer intNum = template.queryForObject(SQL, Integer.class, personId);
		if(intNum != 0) {
			HospitalMember hospitalMember = null;
			SQL = "select * from HospitalMember where personId=?";
			hospitalMember = template.queryForObject(SQL, new Object[] {personId}, new HospitalManagerDBConnector());
			return hospitalMember;
	}
		System.out.println("Hm정보가 존재하지 않습니다.");
		
		return null;
	}
	// 해당 동물병원의사의 병원정보를 가죠오는 데이터
	@Override
	public List<Hospital> getHopital(String personId) {
		String SQL = "select * from hospital where personId = ?";
		List<Hospital> listOfHospital = template.query(SQL, new Object[] {personId}, new HospitalRowMapper());
		return listOfHospital;
	}
	// product manager 마이페이지를 수정하는 곳
	@Override
	public void SetUpdatePM(ProductMember productMember) {
		if(productMember.getPersonId()!=null) {
			 String SQL = "update ProductMember set PersonPw=?, PersonEmail=?, PersonAddress=? ,PersonName=?, PersonBirth=?, PersonSex=? , PersonPhone=?,"
			 			   + "CompanyName=?, CompanyAddress=?, CompanyPhone=? where PersonId=?";
			 template.update(SQL, productMember.getPersonId(), productMember.getPersonPw(), productMember.getPersonEmail(), productMember.getPersonAddress(), productMember.getPersonName(),
					 productMember.getPersonBirth(), productMember.getPersonSex(), productMember.getPersonPhone(), productMember.getCompanyName(), productMember.getCompanyAddress(), productMember.getCompanyPhone(), productMember.getS_image());
		}
	}
	 // hospital manager 마이페이지를 수정하는 곳
	@Override
	public void SetUpdateHM(HospitalMember hospitalMember) {
		if(hospitalMember.getPersonId()!=null) {
			String SQL = "update HospitalMember set PersonPw=?, PersonEmail=?, PersonAddress=?, PersonName=?, personPhone=?, PersonBirth=?, PersonSex=?, hospitalName=?, hospitalAddress=?, hospitalPhone=?, s_image=? where PersonId=?";
			template.update(SQL, hospitalMember.getPersonPw(), hospitalMember.getPersonEmail(), hospitalMember.getPersonAddress(), hospitalMember.getPersonName(), hospitalMember.getPersonPhone(),
					hospitalMember.getPersonBirth(), hospitalMember.getPersonSex(), hospitalMember.getHospitalName(), hospitalMember.getHospitalAddress(), hospitalMember.getS_image());
		}
		
	}
	// hospital manager 마이페이지를 수정하는 곳
	@Override
	public void SetUpdatePr(ProductMember productMember) {
		if(productMember.getPersonId()!=null) {
			 String SQL = "update Person set PersonPw=?, PersonEmail=?, PersonAddress=? ,PersonName=?, PersonBirth=?, PersonSex=? , PersonPhone=?,";
			 template.update(SQL, productMember.getPersonId(), productMember.getPersonPw(), productMember.getPersonEmail(), productMember.getPersonAddress(), productMember.getPersonName(),
					 productMember.getPersonBirth(), productMember.getPersonSex(), productMember.getPersonPhone());
		}
		
	}
	 // hospital manager person 테이블을 수정하는 곳
	@Override
	public void SetUpdatePH(HospitalMember hospitalMembers) {
		if(hospitalMembers.getPersonId()!=null) {
			 String SQL = "update Person set PersonPw=?, PersonEmail=?, PersonAddress=? ,PersonName=?, PersonBirth=?, PersonSex=? , PersonPhone=?,";
			 template.update(SQL, hospitalMembers.getPersonId(), hospitalMembers.getPersonPw(), hospitalMembers.getPersonEmail(), hospitalMembers.getPersonAddress(), hospitalMembers.getPersonName(),
					 hospitalMembers.getPersonBirth(), hospitalMembers.getPersonSex(), hospitalMembers.getPersonPhone());
		}
		
	}
	






}

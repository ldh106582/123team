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
import com.springmvc.domain.Person;
import com.springmvc.domain.Pet;
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
	
	
}

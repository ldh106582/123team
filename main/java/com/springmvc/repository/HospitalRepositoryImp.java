package com.springmvc.repository;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.sql.DataSource;

import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.domain.Hospital;

@Repository
public class HospitalRepositoryImp implements HospitalRepository{
	private JdbcTemplate template;

	 @Autowired
	 public void setJdbctemplate(DataSource dataSource) {
	     this.template = new JdbcTemplate(dataSource);
	 }
	 
	@Override
	public List<Hospital> getAllhospitals() {
		String SQL = "Select * from hospital";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		return list;
	}

	@Override
	public Hospital gethosptialByhId(String hid) {
		Hospital hospital=null;
		String SQL = "Select * from hospital";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		for(int i =0;i<list.size();i++) {
			hospital = list.get(i);
			if(hospital.getHid().equals(hid)) {
				break;
			}
		}
		return hospital;
	}
	String client_id = "dtj7ddq8yk";
	 String client_secret ="jEihQzfLWUYzyRW3YNped129cBccTC3Zp5JSonHa";
	@Override
	public void addhospital(Hospital hospital,String realpath) {
		String SQL = "insert into hospital values(?,?,?,?,?,?,?,?,?,?)";
		String hid =getHid();
		template.update(SQL,hospital.getName(),hospital.getAddr(),hospital.getNumber(),hospital.getRuntime(),hid,hospital.getParking(),hospital.getDescription(),hospital.getPersonId(),hospital.getImage(),hid);
		 
		 	String address = hospital.getAddr();
   			String y = null;
		 	String x = null;
		 	try{
		 		 String addr = URLEncoder.encode(address,"UTF-8");
		 		 String reqUrl = "https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query="+addr;
		 		
		 		 URL url = new URL(reqUrl);
    			 HttpsURLConnection con = (HttpsURLConnection) url.openConnection();
    			 con.setRequestMethod("GET");
    			 con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", client_id);
    			 con.setRequestProperty("X-NCP-APIGW-API-KEY", client_secret);
    			
    			 BufferedReader br;
    			 int responseCode = con.getResponseCode();
    			 if(responseCode==200) {
    				 br = new BufferedReader(new InputStreamReader(con.getInputStream(),"UTF-8"));
    			 }else {
    				 br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
    			 }
    			 String line;
    			 StringBuffer response = new StringBuffer();
    			 while((line=br.readLine())!=null) {
    				 response.append(line);
    			 }
    			 br.close();
    			 JSONTokener tokener = new JSONTokener(response.toString());
    			 JSONObject object = new JSONObject(tokener);
    			 JSONArray arr = object.getJSONArray("addresses");
				 for(int i=0;i<arr.length();i++) {
	   				 JSONObject temp =(JSONObject) arr.get(i);
	   				 address =(String) temp.get("roadAddress");
					 x =(String) temp.get("x");
					 y =(String) temp.get("y");
				}
			 	System.out.println(x+y);
			 	map_service(x,y,address,hid,realpath);
		 	}catch (Exception e){
		 	e.printStackTrace();
		 	}
		
	}
	public void map_service(String point_x,String point_y,String address,String hid,String realpath) {
		String URL_STATICMAP = "https://naveropenapi.apigw.ntruss.com/map-static/v2/raster?";
		try {
			
//			URL 생성,위도와 경도 변수 처리
			String pos =URLEncoder.encode(point_x+" "+point_y,"UTF-8");
			String url = URL_STATICMAP;
			url += "center=" + point_x + "," + point_y;
			url += "&level=16&w=700&h=500";
			url += "&markers=type:t|size:mid|pos:"+pos+"|label:"+URLEncoder.encode(address,"UTF-8");

//			사이트 연결 
			URL u = new URL(url);
			HttpURLConnection con = (HttpURLConnection)u.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-NCP-APIGW-API-KEY-ID", client_id);
			con.setRequestProperty("X-NCP-APIGW-API-KEY", client_secret);
			int responseCode = con.getResponseCode();
			BufferedReader br;
//			연결 성공시
			if(responseCode==200) {
//				파일 읽기
				InputStream is = con.getInputStream();
				int read = 0;
				byte[] bytes = new byte[1024];
				
//				파일 생성
				String tempname = hid;
				File f = new File(realpath,tempname+".jpg");
				f.createNewFile();
				
//				파일 내용 쓰기
				OutputStream outputStream = new FileOutputStream(f);
				while ((read=is.read(bytes)) !=-1) {
					outputStream.write(bytes,0,read);
				}
				is.close();
//				연결실패시
			}else {
				 br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
				 String inputLine;
				 StringBuffer response = new StringBuffer();
				 while((inputLine = br.readLine()) != null) {
					 response.append(inputLine);
				 }
				 br.close();
				 System.out.println(response.toString());
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	private String getHid() {
		String str = Long.toString(System.currentTimeMillis());
		return str;
	}

	@Override
	public void updateHospital(Hospital hospital, String hid) {
		String SQL = "update hospital set name=?,number=?,runtime=?,parking=?,description=?,image=? where hid=?";
		template.update(SQL,hospital.getName(),hospital.getNumber(),hospital.getRuntime(),hospital.getParking(),hospital.getDescription(),hospital.getImage(),hid);
	}

	@Override
	public void deleteHospital(String hid) {
		String SQL ="delete from hospital where hid='"+hid+"'";
		template.update(SQL);
		
	}

	@Override
	public List<Hospital> gethospitalsByTitle(String title) {
		String SQL = "select * from hospital where name Like '%"+title+"%'";
		List<Hospital> list = template.query(SQL, new HospitalRowMapper());
		return list;
	}
	
}
package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.PetWeight;

public class PetWeightDBConnector implements RowMapper<PetWeight>{
    public PetWeight mapRow(ResultSet rs, int rowNum) throws SQLException {
        PetWeight petWeight = new PetWeight();
        petWeight.setPetWeghitDate(rs.getDate(1));
        petWeight.setPetWeghit(rs.getInt(2));
        petWeight.setPetId(rs.getString(3));
        
        return petWeight;
    }
}

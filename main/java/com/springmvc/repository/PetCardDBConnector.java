package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.PetCard;

public class PetCardDBConnector implements RowMapper<PetCard>{
    public PetCard mapRow(ResultSet rs, int rowNum) throws SQLException {
        PetCard petCard = new PetCard();

        String petCardValue = rs.getString(1);
        petCard.setPetCard(petCardValue);

        int petWeightValue = rs.getInt(2);
        petCard.setPetWeghit(petWeightValue);

        Date petChartDate = rs.getDate(3);
        if (petChartDate != null) {
            petCard.setPetChartDate(petChartDate.toLocalDate());
        }

        petCard.setPetChart(rs.getString(4));
        petCard.setPetChartContent(rs.getString(5));

        Date petSurgeryDate = rs.getDate(6);
        if (petSurgeryDate != null) {
            petCard.setPetSurgeryDate(petSurgeryDate.toLocalDate());
        }

        petCard.setPetSurgeryName(rs.getString(7));
        petCard.setPetSurgeryContent(rs.getString(8));

        Date petSurgeryDateAfter = rs.getDate(9);
        if (petSurgeryDateAfter != null) {
            petCard.setPetSurgeryDateAfter(petSurgeryDateAfter.toLocalDate());
        }

        petCard.setPetSurgeryContentAfter(rs.getString(10));

        Date petVaccinationDate = rs.getDate(11);
        if (petVaccinationDate != null) {
            petCard.setPetVaccinationDate(petVaccinationDate.toLocalDate());
        }

        petCard.setPetVaccination(rs.getString(12));
        petCard.setPetVaccinationCotent(rs.getString(13));
        petCard.setPetId(rs.getString(14));

        return petCard;
    }
}

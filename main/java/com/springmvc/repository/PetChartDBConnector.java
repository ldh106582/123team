package com.springmvc.repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.springmvc.domain.PetChart;

public class PetChartDBConnector implements RowMapper<PetChart> {
	public PetChart mapRow(ResultSet rs, int rowNum) throws SQLException {
		PetChart petChart = new PetChart();

		petChart.setPetChartDate(rs.getDate(1).toLocalDate());
		petChart.setPetChart(rs.getString(2));
		petChart.setPetChartContent(rs.getString(3));
		return petChart;
	}
}

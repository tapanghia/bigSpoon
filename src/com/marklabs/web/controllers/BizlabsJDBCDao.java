package com.marklabs.web.controllers;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.marklabs.teams.Team;

public class BizlabsJDBCDao extends JdbcDaoSupport {

	public String getMarketShareDataString(int currentPeriod) {
		final String queryString = "select sm.team_name, sm.market_share from rep_stock_market sm where sm.period = " + (currentPeriod - 1);
		
		final DecimalFormat df = new DecimalFormat("#.##");
		final Map<String, Double> teamMarketShareMap = new TreeMap<String, Double>();
		JdbcTemplate jdbcTemplate = getJdbcTemplate();
		if(jdbcTemplate != null){
			jdbcTemplate.query(queryString, new RowMapper() {
				
				@Override
				public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
					String teamName = rs.getString("team_name");
					Double marketShare = rs.getDouble("market_share");
					teamMarketShareMap.put(teamName, Double.parseDouble(df.format(marketShare)));
					return teamMarketShareMap;
				}
			});
		}
		StringBuilder marketShareChartInputSB = new StringBuilder();
		Iterator<Map.Entry<String, Double>> mapItr = teamMarketShareMap.entrySet().iterator();
		while (mapItr.hasNext()) {
			Map.Entry<java.lang.String, java.lang.Double> entry = (Map.Entry<java.lang.String, java.lang.Double>) mapItr
					.next();
			marketShareChartInputSB.append("[" + "'" + entry.getKey() + "', " + (entry.getValue() *100) + "],");
		}
		if (marketShareChartInputSB.length() > 1) {
			String marketShareInputStr = marketShareChartInputSB.toString();
			marketShareInputStr = marketShareInputStr.substring(0, (marketShareInputStr.length() - 1));
			marketShareChartInputSB = new StringBuilder("[");
			marketShareChartInputSB.append(marketShareInputStr);
			marketShareChartInputSB.append("]");
			return marketShareChartInputSB.toString();
		}
		
		return marketShareChartInputSB.toString();
	}
	
	public String getStockPriceIndexDataString(int currentPeriod, Team loggedInTeamObj) {
		final String queryString = "select sm.period, sm.spi from rep_stock_market sm where sm.period <= " + (currentPeriod - 1) + 
			" and sm.team_name = '" + loggedInTeamObj.getTeamName() + "'";
		
		final Map<String, String> teamStockPriceIndex = new TreeMap<String, String>();
		teamStockPriceIndex.put("Period", "'Stock Price'");
		JdbcTemplate jdbcTemplate = getJdbcTemplate();
		if(jdbcTemplate != null){
			jdbcTemplate.query(queryString, new RowMapper() {

				@Override
				public Object mapRow(ResultSet res, int rowNum) throws SQLException {
					int period = res.getInt("period");
					int spi = res.getInt("spi");
					teamStockPriceIndex.put("Period " + period, spi + "");
					return teamStockPriceIndex;
				}
			});
		}
		StringBuilder stockPriceIndexChartInputSB = new StringBuilder();
		Iterator<Map.Entry<String, String>> mapItr = teamStockPriceIndex.entrySet().iterator();
		while (mapItr.hasNext()) {
			Map.Entry<String, String> entry = (Map.Entry<String, String>) mapItr
					.next();
			stockPriceIndexChartInputSB.append("[" + "'" + entry.getKey() + "', " + entry.getValue() + "],");
		}
		if (stockPriceIndexChartInputSB.length() > 1) {
			String stockPriceInputStr = stockPriceIndexChartInputSB.toString();
			stockPriceInputStr = stockPriceInputStr.substring(0, (stockPriceInputStr.length() - 1));
			stockPriceIndexChartInputSB = new StringBuilder("[");
			stockPriceIndexChartInputSB.append(stockPriceInputStr);
			stockPriceIndexChartInputSB.append("]");
			return stockPriceIndexChartInputSB.toString();
		}
		
		return stockPriceIndexChartInputSB.toString();
	}
	
	public String getGrowthMatrixDataString(int currentPeriod) {
		final String queryString = "select gm.team_name, gm.brand_name, gm.rel_market_share, gm.market_growth " +
				"from rep_growth_matrix gm where gm.period = " + (currentPeriod - 1) + " order by gm.team_name"; 

		final DecimalFormat df = new DecimalFormat("#.##");
		final StringBuilder brandGrowthMatrix = new StringBuilder();
		JdbcTemplate jdbcTemplate = getJdbcTemplate();
		if(jdbcTemplate != null){
			jdbcTemplate.query(queryString, new RowMapper() {
	
				@Override
				public Object mapRow(ResultSet res, int rowNum) throws SQLException {
					String brandName = res.getString("brand_name");
					String teamName = res.getString("team_name");
					Double marketShare = res.getDouble("rel_market_share");
					Double marketGrowth = res.getDouble("market_growth");
					brandGrowthMatrix.append("[" + "'" + brandName + "', " + df.format(marketShare) + ", " + df.format(marketGrowth) + ", '" + teamName + "'],");
					return brandGrowthMatrix;
				}
			});
		}
		
		String brandGrowthMatrixString = brandGrowthMatrix.toString().substring(0, brandGrowthMatrix.toString().length() - 1);
		String startStr = "[" + "['ID', 'Relative Market Share', 'Market Growth', 'Team'],";
		String endStr = "]";
		return startStr + brandGrowthMatrixString + endStr;
	}
	
	public String getRevenueAndProfitDataString(int currentPeriod, Team loggedInTeamObj) {
		final String queryString = "select tr.period, tr.turnover, tr.pat from team_pnl tr where tr.period <= " + (currentPeriod - 1) + 
			" and tr.team_name = '" + loggedInTeamObj.getTeamName() + "'";
	
		final Map<String, String[]> teamRevenueProfitMap = new TreeMap<String, String[]>();
		teamRevenueProfitMap.put("Period", new String[] {"'Revenue'", "'Profit'"});
		JdbcTemplate jdbcTemplate = getJdbcTemplate();
		if(jdbcTemplate != null){
			jdbcTemplate.query(queryString, new RowMapper() {
	
				@Override
				public Object mapRow(ResultSet res, int rowNum) throws SQLException {
					int period = res.getInt("period");
					int revenue = res.getInt("turnover");
					int profit = res.getInt("pat");
					teamRevenueProfitMap.put("Period " + period, new String[]{revenue + "", profit + ""});
					return teamRevenueProfitMap;
				}
			});
		}
		
		StringBuilder teamRevenueAndProfitChartInputSB = new StringBuilder();
		Iterator<Map.Entry<String, String[]>> mapItr = teamRevenueProfitMap.entrySet().iterator();
		while (mapItr.hasNext()) {
			Map.Entry<String, String[]> entry = (Map.Entry<String, String[]>) mapItr
					.next();
			teamRevenueAndProfitChartInputSB.append("[" + "'" + entry.getKey() + "', " + entry.getValue()[0] + ", " + entry.getValue()[1] + "],");
		}
		if (teamRevenueAndProfitChartInputSB.length() > 1) {
			String teamRevenueAndProfitInputStr = teamRevenueAndProfitChartInputSB.toString();
			teamRevenueAndProfitInputStr = teamRevenueAndProfitInputStr.substring(0, (teamRevenueAndProfitInputStr.length() - 1));
			teamRevenueAndProfitChartInputSB = new StringBuilder("[");
			teamRevenueAndProfitChartInputSB.append(teamRevenueAndProfitInputStr);
			teamRevenueAndProfitChartInputSB.append("]");
			return teamRevenueAndProfitChartInputSB.toString();
		}
		
		return teamRevenueAndProfitChartInputSB.toString();
	}
	
}

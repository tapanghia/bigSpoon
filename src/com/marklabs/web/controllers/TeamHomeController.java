package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.teams.Team;

public class TeamHomeController extends MultiActionController{

	private BizlabsJDBCDao bizlabsJDBCDao;

	public BizlabsJDBCDao getBizlabsJDBCDao() {
		return bizlabsJDBCDao;
	}

	public void setBizlabsJDBCDao(BizlabsJDBCDao bizlabsJDBCDao) {
		this.bizlabsJDBCDao = bizlabsJDBCDao;
	}


	/**
	 * Default Method of this controller. 
	 * Logged in teams are redirected to this controller.
	 * @param request
	 * @param response
	 * @return
	 */
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("CURRENT_LINK", Constants.HOME_LINK);
		int currentPeriod = (Integer)session.getAttribute(Constants.CURRENT_PERIOD);
		Team loggedInTeamObj = (Team)session.getAttribute(Constants.TEAM_OBJECT);

		String marketShareChartString = bizlabsJDBCDao.getMarketShareDataString(currentPeriod);
		session.setAttribute("MARKET_SHARE", marketShareChartString);
		System.out.println("************* Market share: " + marketShareChartString);
		
		String stockPriceIndexChartString = bizlabsJDBCDao.getStockPriceIndexDataString(currentPeriod, loggedInTeamObj);
		session.setAttribute("STOCK_PRICE_INDEX", stockPriceIndexChartString);
		System.out.println("************* Stock Price Index: " + stockPriceIndexChartString);
		
		String teamRevenueAndProfitChartString = bizlabsJDBCDao.getRevenueAndProfitDataString(currentPeriod, loggedInTeamObj);
		session.setAttribute("TEAM_REVENUE_AND_PROFIT", teamRevenueAndProfitChartString);
		System.out.println("************* Team Revenue and Profit: " + teamRevenueAndProfitChartString);
		
		String brandGrowthMatrixChartString = bizlabsJDBCDao.getGrowthMatrixDataString(currentPeriod);
		session.setAttribute("BRAND_GROWTH_MATRIX", brandGrowthMatrixChartString);
		System.out.println("************* Brand Growth Matrix: " + brandGrowthMatrixChartString);
		
		ModelAndView mav = new ModelAndView("teamHome");
		return mav;
	}
	
}

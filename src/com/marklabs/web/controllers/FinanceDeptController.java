package com.marklabs.web.controllers;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.financeDept.IFinanceService;
import com.marklabs.financeDept.TeamFinance;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class FinanceDeptController extends MultiActionController {

	private IFinanceService financeService;
	private ITeamService teamService;
	
	/**
	 * Default method, If the action is not passed, when the control is passed to this controller, 
	 * 		this method, will be invoked. 
	 * @param request
	 * @param response
	 * @return
	 */
	
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("CURRENT_LINK",Constants.FINANCE_DEPT_LINK);
		
		ModelAndView mav = new ModelAndView("financeDeptHome");
		return mav;
	}

	
	public ModelAndView manageTeamFinances(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("manageTeamFinances");
		
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
		
		
		// Code to save/update the finances data. New finances data is generated based upon the debt applied
		String todo = request.getParameter("todo");
		if (todo != null && !("".equals(todo)) && todo.equalsIgnoreCase("saveTeamFinances")) {
		
			long teamCurrentBudget = (Long)request.getSession().getAttribute(Constants.CURRENT_BUDGET);
			String debtAppliedForStr = request.getParameter("debtAppliedFor");
			int debtAppliedFor = Integer.parseInt(debtAppliedForStr);
			
			if (debtAppliedForStr != null && !"".equals(debtAppliedForStr)) {
				TeamFinance existingTeamFinances = financeService.getTeamFinance(loggedInTeam, currPeriod);
				if (existingTeamFinances != null && existingTeamFinances.getEquity() > 0) {
					updateTeamFinancesBasedOnNewDebtApplied(existingTeamFinances, debtAppliedFor);
					
					// Team Finances should not be updated, if new debt equity ratio is > 1
					if (existingTeamFinances.getDebtEquityRatio() <= 1) {
						// saving the updated TeamFinances
						financeService.updateTeamFinance(existingTeamFinances);
						
						// Now updating the budget.
						// The debt applied for has been approved and hence needs to be added to the budget
						long updatedTeamBudget = teamCurrentBudget + debtAppliedFor;
						
						request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
						request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedTeamBudget);
									
						loggedInTeam.setTeamCurrentPeriodBudget(updatedTeamBudget);
						teamService.updateTeam(loggedInTeam);
					}
				}
			}
		}
		
		// Now fetching the most updated finances data from database and passing to UI
		TeamFinance teamFinance = financeService.getTeamFinance(loggedInTeam, currPeriod);
		
		mav.addObject(Constants.TEAM_FINANCES, teamFinance);
		return mav;
	}

	/**
	 * Method to calculate new team finances based upon the debt applied for
	 * 
	 * @param teamFinances
	 * @param debtAppliedFor
	 * @return
	 */
	private TeamFinance updateTeamFinancesBasedOnNewDebtApplied(
			TeamFinance teamFinances, int debtAppliedFor) {
	
		int newDebt = teamFinances.getDebt() + debtAppliedFor;
		double newDebtEquityRatio = new Double(newDebt)/new Double(teamFinances.getEquity());
		double newRateOfInterest = 0.1 + 0.05*newDebtEquityRatio;
		int newInterestpayable = teamFinances.getInterestPayable() + 
			new Double((newRateOfInterest*debtAppliedFor)/4).intValue();
		
		teamFinances.setDebt(newDebt);
		teamFinances.setDebtEquityRatio(newDebtEquityRatio);
		teamFinances.setRateOfInterest(newRateOfInterest);
		teamFinances.setInterestPayable(newInterestpayable);
		
		return teamFinances;
	}
	
	
	public IFinanceService getFinanceService() {
		return financeService;
	}


	public void setFinanceService(IFinanceService financeService) {
		this.financeService = financeService;
	}


	public ITeamService getTeamService() {
		return teamService;
	}


	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}
	
	
	
	
}

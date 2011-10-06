package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.HRDept.IHRService;
import com.marklabs.HRDept.TeamHR;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class HumanResourcesDeptController extends MultiActionController{
	
	private IHRService hrService;
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
		session.setAttribute("CURRENT_LINK",Constants.HR_DEPT_LINK);
		
		ModelAndView mav = new ModelAndView("humanResourcesDeptHome");
		return mav;
	}
	
	public ModelAndView manageTeamHumanResources(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("manageTeamHumanResources");
		
		
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
		
		
		// Code to save/update the operations data. 
		String todo = request.getParameter("todo");
		if (todo != null && !("".equals(todo)) && todo.equalsIgnoreCase("saveTeamHumanResources")) {
			long teamCurrentBudget = (Long)request.getSession().getAttribute(Constants.CURRENT_BUDGET);
			int level3SalesForce = Integer.parseInt(request.getParameter("level3SalesForce"));
			int level2SalesForce = Integer.parseInt(request.getParameter("level2SalesForce"));
			int level1SalesForce = Integer.parseInt(request.getParameter("level1SalesForce"));

			int trainingLevel2SF = Integer.parseInt(request.getParameter("level2SalesForce_training"));
			int trainingLevel1SF = Integer.parseInt(request.getParameter("level1SalesForce_training"));
			
			// previous period data for calculating hiring firing costs
			int ppLevel3SalesForce = Integer.parseInt(request.getParameter("ppLevel3SalesForce"));
			int ppLevel2SalesForce = Integer.parseInt(request.getParameter("ppLevel2SalesForce"));
			int ppLevel1SalesForce = Integer.parseInt(request.getParameter("ppLevel1SalesForce"));
			
			
			int updatedHiringFiringCost = calculateHiringFiringCos(level3SalesForce, level2SalesForce, level1SalesForce, 
					ppLevel3SalesForce, ppLevel2SalesForce, ppLevel1SalesForce);
			int updatedTotalSalesCost = calculateTotalSalesCost(level3SalesForce,level2SalesForce, level1SalesForce);
			int updatedTrainingCost = calculateTrainingCost(trainingLevel2SF, trainingLevel1SF);
			
			TeamHR teamHR = hrService.getTeamHR(loggedInTeam, currPeriod);
			
			if (teamHR != null) {
				int currentHRExpensesRecorded = teamHR.getHiringFiringCost() + 
					teamHR.getTotalSalesCost() + teamHR.getTrainingCost();
				
				long updatedBudget = teamCurrentBudget + currentHRExpensesRecorded - 
					(updatedHiringFiringCost + updatedTotalSalesCost + updatedTrainingCost);
				
				
				if (updatedBudget > 0) {
					
					teamHR.setLevel1SalesForce(level1SalesForce);
					teamHR.setLevel2SalesForce(level2SalesForce);
					teamHR.setLevel3SalesForce(level3SalesForce);
					teamHR.setTotalSalesForce(level1SalesForce + level2SalesForce + level3SalesForce);
					teamHR.setHiringFiringCost(updatedHiringFiringCost);
					teamHR.setTotalSalesCost(updatedTotalSalesCost);
					
					teamHR.setTrainingLevel1SalesForce(trainingLevel1SF);
					teamHR.setTrainingLevel2SalesForce(trainingLevel2SF);
					teamHR.setTrainingCost(updatedTrainingCost);
					hrService.updateTeamHR(teamHR);
					
					
					// update team budget
					request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
					request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedBudget);
								
					loggedInTeam.setTeamCurrentPeriodBudget(updatedBudget);
					teamService.updateTeam(loggedInTeam);
				}
			}
			else {
				// When the Team HR form is being filled for the first time
				
				long updatedBudget = teamCurrentBudget - 
					(updatedHiringFiringCost + updatedTotalSalesCost + updatedTrainingCost);
			
				if (updatedBudget > 0) {
					TeamHR thisTeamHR = new TeamHR();
					
					thisTeamHR.setTeam(loggedInTeam);
					thisTeamHR.setPeriod(currPeriod);
					thisTeamHR.setLevel1SalesForce(level1SalesForce);
					thisTeamHR.setLevel2SalesForce(level2SalesForce);
					thisTeamHR.setLevel3SalesForce(level3SalesForce);
					thisTeamHR.setTotalSalesForce(level1SalesForce + level2SalesForce + level3SalesForce);
					thisTeamHR.setHiringFiringCost(updatedHiringFiringCost);
					thisTeamHR.setTotalSalesCost(updatedTrainingCost);
					
					thisTeamHR.setTrainingLevel1SalesForce(trainingLevel1SF);
					thisTeamHR.setTrainingLevel2SalesForce(trainingLevel2SF);
					thisTeamHR.setTrainingCost(updatedTrainingCost);
					hrService.saveTeamHR(thisTeamHR);
					
					
					// update team budget
					request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
					request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedBudget);
								
					loggedInTeam.setTeamCurrentPeriodBudget(updatedBudget);
					teamService.updateTeam(loggedInTeam);
				}
			}
			
		
		}
		
		// Now fetching the most updated Human Resources information from database for this and previous periods
		TeamHR thisPeriodHumanResources = hrService.getTeamHR(loggedInTeam, currPeriod);
		TeamHR previousPeriodHumanResources = hrService.getTeamHR(loggedInTeam, currPeriod - 1);
		
		mav.addObject(Constants.TEAM_HUMAN_RESOURCES, thisPeriodHumanResources);
		mav.addObject(Constants.TEAM_HUMAN_RESOURCES_PREVIOUS, previousPeriodHumanResources);
		return mav;
	}

	private int calculateTrainingCost(int trainingLevel2SF, int trainingLevel1SF) {
		return (trainingLevel2SF * 10000) + (trainingLevel1SF * 7000);
	}

	private int calculateTotalSalesCost(int level3SalesForce,
			int level2SalesForce, int level1SalesForce) {
		return ((level3SalesForce * 26000) + (level2SalesForce * 12000) + (level1SalesForce * 7000));
	}

	private int calculateHiringFiringCos(int level3SalesForce,
			int level2SalesForce, int level1SalesForce, int ppLevel3SalesForce, int ppLevel2SalesForce, int ppLevel1SalesForce) {
		int hiringFiringCost = 0;
		
		hiringFiringCost = (Math.abs(level3SalesForce - ppLevel3SalesForce) * 26000) + 
			(Math.abs(level2SalesForce - ppLevel2SalesForce) * 12000) +
			(Math.abs(level1SalesForce - ppLevel1SalesForce) * 7000); 
		
		return hiringFiringCost;
	}

	public IHRService getHrService() {
		return hrService;
	}

	public void setHrService(IHRService hrService) {
		this.hrService = hrService;
	}

	public ITeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}
	
	
	
}

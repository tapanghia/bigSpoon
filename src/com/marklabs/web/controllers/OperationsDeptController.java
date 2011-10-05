package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.operationsDept.IOperationsService;
import com.marklabs.operationsDept.TeamOperations;
import com.marklabs.teams.ITeamService;
import com.marklabs.teams.Team;

public class OperationsDeptController extends MultiActionController{

	private IOperationsService operationsService;
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
		session.setAttribute("CURRENT_LINK",Constants.OPERATIONS_DEPT_LINK);
		
		ModelAndView mav = new ModelAndView("operationsDeptHome");
		return mav;
	}
	
	public ModelAndView manageTeamOperations(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("manageTeamOperations");
		
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
		
		
		// Code to save/update the operations data. 
		String todo = request.getParameter("todo");
		if (todo != null && !("".equals(todo)) && todo.equalsIgnoreCase("saveTeamOperations")) {
			long teamCurrentBudget = (Long)request.getSession().getAttribute(Constants.CURRENT_BUDGET);
			String capacityIncreaseRadioSelection = request.getParameter("capacityIncreaseSelection");

			if (capacityIncreaseRadioSelection != null && !"".equals(capacityIncreaseRadioSelection)) {
				int increaseCapacityBy = Integer.parseInt(capacityIncreaseRadioSelection.split(":")[0]);
				int costIncurrend = Integer.parseInt(capacityIncreaseRadioSelection.split(":")[1]);
				
				TeamOperations teamOperations = 
					operationsService.getTeamOperations(loggedInTeam, currPeriod);
				
				if (teamOperations != null) {
					// previously selected capacity increase (manage the budget accordingly)
					int currentExpansionCost = teamOperations.getExpansionCost();
					
					long updatedBudget = teamCurrentBudget + currentExpansionCost - costIncurrend;
					if (updatedBudget > 0) {
						// the updated budget is > 0, so update the TeamOperations production capacity
						
						teamOperations.setCapacityIncreasedBy(increaseCapacityBy);
						teamOperations.setExpansionCost(costIncurrend);
						operationsService.updateTeamOperations(teamOperations);
						
						
						// update team budget
						request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
						request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedBudget);
									
						loggedInTeam.setTeamCurrentPeriodBudget(updatedBudget);
						teamService.updateTeam(loggedInTeam);
					}
				}
				else {
					// creating TeamOperations entry for the first time
					TeamOperations thisPeriodTeamOperations = new TeamOperations();
					
					thisPeriodTeamOperations.setCapacityIncreasedBy(increaseCapacityBy);
					thisPeriodTeamOperations.setExpansionCost(costIncurrend);
					thisPeriodTeamOperations.setMaximumCapacity(0);
					thisPeriodTeamOperations.setPeriod(currPeriod);
					thisPeriodTeamOperations.setTeam(loggedInTeam);
					
					long updatedBudget = teamCurrentBudget - costIncurrend;
					if (updatedBudget > 0) {
						operationsService.saveTeamOperations(thisPeriodTeamOperations);
						
						// update team budget
						request.getSession().removeAttribute(Constants.CURRENT_BUDGET);
						request.getSession().setAttribute(Constants.CURRENT_BUDGET, updatedBudget);
									
						loggedInTeam.setTeamCurrentPeriodBudget(updatedBudget);
						teamService.updateTeam(loggedInTeam);
					}
				}
			}	
		}
		
		// Now fetching the most updated operations data from database and passing to UI
		TeamOperations teamOperations = operationsService.getTeamOperations(loggedInTeam, currPeriod);
		
		mav.addObject(Constants.TEAM_OPERATIONS, teamOperations);
		return mav;
	}

	public IOperationsService getOperationsService() {
		return operationsService;
	}

	public void setOperationsService(IOperationsService operationsService) {
		this.operationsService = operationsService;
	}

	public ITeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(ITeamService teamService) {
		this.teamService = teamService;
	}

}

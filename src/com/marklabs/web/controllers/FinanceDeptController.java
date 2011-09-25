package com.marklabs.web.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

public class FinanceDeptController extends MultiActionController {

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
		
		
		return mav;
	}
}

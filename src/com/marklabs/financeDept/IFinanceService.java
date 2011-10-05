package com.marklabs.financeDept;

import com.marklabs.teams.Team;

public interface IFinanceService {

	public TeamFinance getTeamFinance(Team team, long currentPeriod);
	public void saveTeamFinance(TeamFinance finance);
	public void updateTeamFinance(TeamFinance finance);
}

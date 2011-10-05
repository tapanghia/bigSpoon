package com.marklabs.HRDept;

import com.marklabs.teams.Team;

public interface IHRService {
	public TeamHR getTeamHR(Team team, long currentPeriod);
	public void saveTeamHR(TeamHR humanResources);
	public void updateTeamHR(TeamHR humanResources);
}

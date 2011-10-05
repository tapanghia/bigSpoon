package com.marklabs.operationsDept;

import com.marklabs.teams.Team;

public interface IOperationsService {

	public TeamOperations getTeamOperations(Team team, long currentPeriod);
	public void saveTeamOperations(TeamOperations operations);
	public void updateTeamOperations(TeamOperations operations);
}

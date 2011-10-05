package com.marklabs.operationsDept;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

public class OperationsService extends HibernateDaoSupport implements IOperationsService {

	@Override
	public TeamOperations getTeamOperations(Team team, long currentPeriod) {
		String queryString = "from TeamOperations where team_Id = "+ team.getId() + " and period = " + currentPeriod;
		List<TeamOperations> teamOperations = getHibernateTemplate().find(queryString);
		if (teamOperations != null && teamOperations.size() > 0)
			return teamOperations.get(0);
		return null;
	}

	@Override
	public void saveTeamOperations(TeamOperations operations) {
		getHibernateTemplate().save(operations);
	}

	@Override
	public void updateTeamOperations(TeamOperations operations) {
		getHibernateTemplate().update(operations);
	}


}

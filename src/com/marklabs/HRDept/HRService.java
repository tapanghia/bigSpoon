package com.marklabs.HRDept;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

public class HRService extends HibernateDaoSupport implements IHRService {

	@Override
	public TeamHR getTeamHR(Team team, long currentPeriod) {
		String queryString = "from TeamHR where team_Id = "+ team.getId() + " and period = " + currentPeriod;
		List<TeamHR> teamHR = getHibernateTemplate().find(queryString);
		if (teamHR != null && teamHR.size() > 0)
			return teamHR.get(0);
		return null;
	}

	@Override
	public void saveTeamHR(TeamHR humanResources) {
		getHibernateTemplate().save(humanResources);
	}

	@Override
	public void updateTeamHR(TeamHR humanResources) {
		getHibernateTemplate().update(humanResources);
	}


}

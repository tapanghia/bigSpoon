package com.marklabs.financeDept;

import java.util.List;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

import com.marklabs.teams.Team;

public class FinanceService extends HibernateDaoSupport implements IFinanceService {

	@Override
	public TeamFinance getTeamFinance(Team team, long currentPeriod) {
		String queryString = "from TeamFinance where team_Id = "+ team.getId() + " and period = " + currentPeriod;
		List<TeamFinance> teamFinances = getHibernateTemplate().find(queryString);
		if (teamFinances != null && teamFinances.size() > 0)
			return teamFinances.get(0);
		return null;
	}

	@Override
	public void saveTeamFinance(TeamFinance finance) {
		getHibernateTemplate().save(finance);
	}

	@Override
	public void updateTeamFinance(TeamFinance finance) {
		getHibernateTemplate().update(finance);
	}

	
	
	
	
}

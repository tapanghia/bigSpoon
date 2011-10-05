package com.marklabs.financeDept;

import com.marklabs.teams.Team;

public class TeamFinance {

	private long id;
	private int period;
	private int debt;
	private int equity;
	private double debtEquityRatio;
	private double rateOfInterest;
	private int interestPayable;

	private Team team;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public int getDebt() {
		return debt;
	}

	public void setDebt(int debt) {
		this.debt = debt;
	}

	public int getEquity() {
		return equity;
	}

	public void setEquity(int equity) {
		this.equity = equity;
	}

	public double getDebtEquityRatio() {
		return debtEquityRatio;
	}

	public void setDebtEquityRatio(double debtEquityRatio) {
		this.debtEquityRatio = debtEquityRatio;
	}

	public double getRateOfInterest() {
		return rateOfInterest;
	}

	public void setRateOfInterest(double rateOfInterest) {
		this.rateOfInterest = rateOfInterest;
	}

	public int getInterestPayable() {
		return interestPayable;
	}

	public void setInterestPayable(int interestPayable) {
		this.interestPayable = interestPayable;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	
	
	
	
}

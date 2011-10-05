package com.marklabs.operationsDept;

import com.marklabs.teams.Team;

public class TeamOperations {

	private long id;
	private int period;
	private int maximumCapacity;
	private int capacityIncreasedBy;
	private int expansionCost;
	
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

	public int getMaximumCapacity() {
		return maximumCapacity;
	}

	public void setMaximumCapacity(int maximumCapacity) {
		this.maximumCapacity = maximumCapacity;
	}


	public int getCapacityIncreasedBy() {
		return capacityIncreasedBy;
	}

	public void setCapacityIncreasedBy(int capacityIncreasedBy) {
		this.capacityIncreasedBy = capacityIncreasedBy;
	}

	public int getExpansionCost() {
		return expansionCost;
	}

	public void setExpansionCost(int expansionCost) {
		this.expansionCost = expansionCost;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}
	
	
	
}


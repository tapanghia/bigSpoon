package com.marklabs.tabSelector;

import java.io.Serializable;

public class TabConfigurator implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1141267771335549309L;
	private long id;
	private String tabName;
	private short displayFlag;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTabName() {
		return tabName;
	}

	public void setTabName(String tabName) {
		this.tabName = tabName;
	}

	public short getDisplayFlag() {
		return displayFlag;
	}

	public void setDisplayFlag(short displayFlag) {
		this.displayFlag = displayFlag;
	}

}

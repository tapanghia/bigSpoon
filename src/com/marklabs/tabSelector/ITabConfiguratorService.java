package com.marklabs.tabSelector;

import java.util.Map;

public interface ITabConfiguratorService {

	public Map<TabConstants, Boolean> fetchTabConfiguration();
}

package com.marklabs.tabSelector;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate.support.HibernateDaoSupport;

public class TabConfiguratorService extends HibernateDaoSupport implements ITabConfiguratorService {

	@Override
	public Map<TabConstants, Boolean> fetchTabConfiguration() {
		List<TabConfigurator> tabConfigList = getHibernateTemplate().find("from TabConfigurator tc");
		if (tabConfigList != null && tabConfigList.size() > 0) {
			Map<TabConstants, Boolean> tabConfMap = new HashMap<TabConstants, Boolean>();
			Iterator<TabConfigurator> tabConf = tabConfigList.iterator();
			while (tabConf.hasNext()) {
				TabConfigurator tabConfigurator = (TabConfigurator) tabConf.next();
				for(TabConstants tabConst : TabConstants.values()) 
					if (tabConfigurator.getTabName().equalsIgnoreCase(tabConst.getDatabaseName())) {
						tabConfMap.put(tabConst, tabConfigurator.getDisplayFlag()>0?true:false);
						break;
					}
			}
			return tabConfMap;
		}
		return null;
	}

}

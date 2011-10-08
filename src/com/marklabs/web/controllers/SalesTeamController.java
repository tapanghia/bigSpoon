package com.marklabs.web.controllers;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import com.marklabs.HRDept.IHRService;
import com.marklabs.HRDept.TeamHR;
import com.marklabs.brands.Brand;
import com.marklabs.brands.IBrandService;
import com.marklabs.distributionCoverage.AverageMarginOffered;
import com.marklabs.distributionCoverage.IMarginOfferedService;
import com.marklabs.distributionCoverage.ISalesForceService;
import com.marklabs.distributionCoverage.MarginOffered;
import com.marklabs.distributionCoverage.SalesForce;
import com.marklabs.teams.Team;

public class SalesTeamController extends MultiActionController {

	IBrandService brandService;
	IMarginOfferedService marginOfferedService;
	ISalesForceService salesForceService;
	IHRService hrService;
	
	
	
	public IHRService getHrService() {
		return hrService;
	}

	public void setHrService(IHRService hrService) {
		this.hrService = hrService;
	}

	public ISalesForceService getSalesForceService() {
		return salesForceService;
	}

	public void setSalesForceService(ISalesForceService salesForceService) {
		this.salesForceService = salesForceService;
	}

	public IMarginOfferedService getMarginOfferedService() {
		return marginOfferedService;
	}

	public void setMarginOfferedService(IMarginOfferedService marginOfferedService) {
		this.marginOfferedService = marginOfferedService;
	}

	/**
	 * @return the brandService
	 */
	public IBrandService getBrandService() {
		return brandService;
	}

	/**
	 * @param brandService the brandService to set
	 */
	public void setBrandService(IBrandService brandService) {
		this.brandService = brandService;
	}

	/**
	 * Default method, If the action is not passed, when the control is passed to this controller, 
	 * 		this method, will be invoked. 
	 * @param request
	 * @param response
	 * @return
	 */
	
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		session.setAttribute("CURRENT_LINK",Constants.SALES_LINK);
		
		ModelAndView mav = new ModelAndView("salesTeamHome");
		return mav;
	}
	
	public ModelAndView getSalesForceMgmt (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("salesForceMgmt");
		
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
		TeamHR teamHR = hrService.getTeamHR(loggedInTeam, currPeriod);
		
		List<Brand> currentPeriodBrands = brandService.getAllBrandsForTeamCurrentPeriod(loggedInTeam, currPeriod);
		List<Long> currentPeriodBrandIds = new ArrayList<Long>();
		Iterator<Brand> currentPeriodBrandsItr = currentPeriodBrands.iterator();
		while (currentPeriodBrandsItr.hasNext()) {
			Brand brand = (Brand) currentPeriodBrandsItr.next();
			currentPeriodBrandIds.add(new Long(brand.getId()));
		}
		
		
		// Code to save/update the modified data for Margin Offered and Sales Force per Brand
		String todo = request.getParameter("todo");
		if (todo != null && !("".equals(todo)) && todo.equalsIgnoreCase("saveSalesMgmtData")) {
		
			double newTotalSalesForce = 0; 
			
			String brandMarginOfferedInputData = request.getParameter("brandMarginOfferedInputData");
			String brandSalesForceInputData = request.getParameter("brandSalesEffortInputData");
			
			// Now processing Strings and creating Margin Offered 
			String[] brandSalesForce = brandSalesForceInputData.split(";;");
			String[] brandMarginOffered = brandMarginOfferedInputData.split(";;");
			
			// Data Structures to store the Brand SalesForce and Brand Margin Offered values, coming from jsps
			HashMap<Brand, SalesForce> brandSalesForceMap = new HashMap<Brand, SalesForce>();
			HashMap<Brand, MarginOffered> brandMarginOfferedMap = new HashMap<Brand, MarginOffered>();
			
			
			for (String bmo:brandMarginOffered) {
				
				String[] brandMarginOfferedContents = bmo.split("_");
				if (brandMarginOfferedContents!= null && brandMarginOfferedContents.length == 3) {
					long brandId = Long.parseLong(brandMarginOfferedContents[0]);
					String typeMarginOffered = brandMarginOfferedContents[1];
					long marginOfferedValue = Long.parseLong(brandMarginOfferedContents[2]);
					
					// adding data to maps
					Brand brand = brandService.getBrandonId(brandId);
					MarginOffered thisBrandMarginOffered ;
					
					// checking of this brand exists in the brandSalesForceMap
					if (brandMarginOfferedMap.containsKey(brand))
						thisBrandMarginOffered = brandMarginOfferedMap.get(brand);
					else {
						thisBrandMarginOffered = marginOfferedService.getMarginOfferedForBrand(brand);
						if (thisBrandMarginOffered == null)
							thisBrandMarginOffered = new MarginOffered();
					}	
					
					if (typeMarginOffered.equalsIgnoreCase("SuperMarketMarginOffered")) { 
						thisBrandMarginOffered.setSupermarket_mo(marginOfferedValue);
					}	
					else if (typeMarginOffered.equalsIgnoreCase("GeneralStoreMarginOffered")) { 
						thisBrandMarginOffered.setGeneralStore_mo(marginOfferedValue);
					}
					else if (typeMarginOffered.equalsIgnoreCase("KiranaStoreMarginOffered")) {
						thisBrandMarginOffered.setKiranaStore_mo(marginOfferedValue);
					}
					
					brandMarginOfferedMap.put(brand, thisBrandMarginOffered);
				}
			}
			
			for (String bsf:brandSalesForce) {
					
				String[] brandSalesForceContents = bsf.split("_");
				if (brandSalesForceContents!= null && brandSalesForceContents.length == 3) {
					long brandId = Long.parseLong(brandSalesForceContents[0]);
					String typeSalesForce = brandSalesForceContents[1];
					double salesForceValue = Math.round(Double.parseDouble(brandSalesForceContents[2]));
					
					if (currentPeriodBrandIds.contains(brandId)) {
						// adding data to maps
						Brand brand = brandService.getBrandonId(brandId);
						SalesForce thisBrandSalesForce ;
						
						// checking of this brand exists in the brandSalesForceMap
						if (brandSalesForceMap.containsKey(brand)) {
							thisBrandSalesForce = brandSalesForceMap.get(brand);
						}
						else {
							thisBrandSalesForce = salesForceService.getSalesForceForBrand(brand);
							if (thisBrandSalesForce == null) {
								thisBrandSalesForce = new SalesForce();
							}
						}	
						
						if (typeSalesForce.equalsIgnoreCase("SuperMarketSalesForce")) { 
							newTotalSalesForce = newTotalSalesForce + salesForceValue;
							thisBrandSalesForce.setSupermarket_sf(salesForceValue);
						}	
						else if (typeSalesForce.equalsIgnoreCase("GeneralStoreSalesForce")) { 
							newTotalSalesForce = newTotalSalesForce + salesForceValue;
							thisBrandSalesForce.setGeneralStore_sf(salesForceValue);
						}
						else if (typeSalesForce.equalsIgnoreCase("KiranaStoreSalesForce")) {
							newTotalSalesForce = newTotalSalesForce + salesForceValue;
							thisBrandSalesForce.setKiranaStore_sf(salesForceValue);
						}
						
						brandSalesForceMap.put(brand, thisBrandSalesForce);
					}
				}
			}
			
			// Checking if the salesForce allocated in less than or equal to the sales force available in this period
			if (teamHR != null && (newTotalSalesForce <= teamHR.getTotalSalesForce())) {
			
				// Now reading the HashMaps for BrandMarginOfferedMap and BrandSalesForceMap and saving data
				Iterator<Map.Entry<Brand, MarginOffered>> marginOfferedMapItr = brandMarginOfferedMap.entrySet().iterator();
				while (marginOfferedMapItr.hasNext()) {
					Map.Entry<Brand, MarginOffered> entry = (Map.Entry<Brand, MarginOffered>) marginOfferedMapItr.next();
					
					Brand thisBrand = entry.getKey();
					MarginOffered thisBrandMO = entry.getValue();
					thisBrandMO.setBrand(thisBrand);
					
					
					// printing all the details for Margin Offered, we are about to save
					marginOfferedService.saveOrUpdateMarginOffered(thisBrandMO);
				}
				
				Iterator<Map.Entry<Brand, SalesForce>> salesForceMapItr = brandSalesForceMap.entrySet().iterator();
				while (salesForceMapItr.hasNext()) {
					Map.Entry<Brand, SalesForce> entry = (Map.Entry<Brand, SalesForce>) salesForceMapItr.next();
					
					Brand thisBrand = entry.getKey();
					SalesForce thisBrandSF = entry.getValue();
					thisBrandSF.setBrand(thisBrand);
					
					salesForceService.saveOrUpdateSalesForce(thisBrandSF);
				}
			}
		}
		
		// ********** Save is done, populate code starts from here
		
		
		List<Brand> resultBrands = brandService.getAllBrandsForTeamCurrentPeriod(loggedInTeam, currPeriod);
		AverageMarginOffered averMarginOffered = marginOfferedService.getAverageMarginOffered();
		
		Map<Brand, MarginOffered> marginOfferedForBrands = marginOfferedService.getMarginOfferedForBrands(resultBrands);
		Map<Brand, SalesForce> salesForceForBrands = salesForceService.getSalesForceForBrands(resultBrands);
		
		// Sales Force for previous period
		List<Brand> previousPeriodBrands = brandService.getAllBrandsForTeamCurrentPeriod(loggedInTeam, (currPeriod - 1));
		Map<Brand, SalesForce> salesForceForPreviousPeriodBrands = salesForceService.getSalesForceForBrands(previousPeriodBrands);
		
	
		mav.addObject(Constants.TO_DISPLAY_BRANDS, resultBrands);
		mav.addObject(Constants.AVERAGE_MARGIN_OFFERED, averMarginOffered);
		mav.addObject(Constants.MARGIN_OFFERED_FOR_BRANDS, marginOfferedForBrands);
		mav.addObject(Constants.SALESFORCE_FOR_BRANDS, salesForceForBrands);	

		mav.addObject(Constants.PREVIOUS_PERIOD_BRANDS_FOR_SALES_FORCE, previousPeriodBrands);
		mav.addObject(Constants.PREVIOUS_PERIOD_BRAND_SALES_FORCE_MAP, salesForceForPreviousPeriodBrands);	
		
		mav.addObject(Constants.TOTAL_AVAILABLE_SALES_FORCE_TO_ALLOCATE, (teamHR != null? teamHR.getTotalSalesForce():0));
		
		return mav;
	}
	
/*	private double getTotalSalesForceCost(double totalSalesForce, int currentPeriod) {
        return (totalSalesForce * 20000 * (1 + 0.05 * currentPeriod));
	}
*/
/*	public ModelAndView displaySalesForce (HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("displaySalesForce");
		Team loggedInTeam = (Team)request.getSession().getAttribute(Constants.TEAM_OBJECT);
		int currPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD); 
	
		// Calling functions to just display the data on Sales Force Mgmt page
		
		List<Brand> resultBrands = brandService.getAllBrandsForTeamCurrentPeriod(loggedInTeam, currPeriod);
		AverageMarginOffered averMarginOffered = marginOfferedService.getAverageMarginOffered();
		
		Map<Brand, MarginOffered> marginOfferedForBrands = marginOfferedService.getMarginOfferedForBrands(resultBrands);
		Map<Brand, SalesForce> salesForceForBrands = salesForceService.getSalesForceForBrands(resultBrands);
		
		long superMarketSalesForce = 0, generalStoreSalesForce = 0, kiranaStoreSalesForce = 0;
		
		Iterator<Map.Entry<Brand, SalesForce>> salesForceForBrandsItr = salesForceForBrands.entrySet().iterator();
		while (salesForceForBrandsItr.hasNext()) {
			Map.Entry<Brand, SalesForce> entry = (Map.Entry<Brand, SalesForce>) salesForceForBrandsItr.next();
			
			superMarketSalesForce += (long)entry.getValue().getSupermarket_sf();
			generalStoreSalesForce += (long)entry.getValue().getGeneralStore_sf();
			kiranaStoreSalesForce += (long)entry.getValue().getKiranaStore_sf();
		}
		
		//Data Struct to store Brand and SalesForce percentage distribution
		Map<Brand, SalesForcePercentage> brandSalesForcePercentageMap = new HashMap<Brand, SalesForcePercentage>();
		
		salesForceForBrandsItr = salesForceForBrands.entrySet().iterator();
		while (salesForceForBrandsItr.hasNext()) {
			Map.Entry<Brand, SalesForce> entry = (Map.Entry<Brand, SalesForce>) salesForceForBrandsItr.next();
		
			SalesForcePercentage salesForcePercentage = new SalesForcePercentage();
			salesForcePercentage.setBrand(entry.getKey());
			salesForcePercentage.setSuperMarketPercentage(Math.round((entry.getValue().getSupermarket_sf()/superMarketSalesForce)*100));
			salesForcePercentage.setGenStorePercentage(Math.round((entry.getValue().getGeneralStore_sf()/generalStoreSalesForce)*100));
			salesForcePercentage.setKiranaStorePercentage(Math.round((entry.getValue().getKiranaStore_sf()/kiranaStoreSalesForce)*100));
			
			brandSalesForcePercentageMap.put(entry.getKey(), salesForcePercentage);
			
		}
		

		mav.addObject(Constants.TO_DISPLAY_BRANDS, resultBrands);
		mav.addObject(Constants.AVERAGE_MARGIN_OFFERED, averMarginOffered);
		mav.addObject(Constants.MARGIN_OFFERED_FOR_BRANDS, marginOfferedForBrands);
		mav.addObject(Constants.SALESFORCE_FOR_BRANDS, salesForceForBrands);	

		mav.addObject(Constants.BRAND_SALESFORCE_PERCENTAGE_MAP, brandSalesForcePercentageMap);
		mav.addObject(Constants.TOTAL_SUPERMARKET_SALESFORCE, superMarketSalesForce);
		mav.addObject(Constants.TOTAL_GENSTORE_SALESFORCE, generalStoreSalesForce);
		mav.addObject(Constants.TOTAL_KIRANASTORESALESFORCE, kiranaStoreSalesForce);
	
		return mav;
	}
	
	public ModelAndView saveAndUpdateSalesForceManagement(HttpServletRequest request, HttpServletResponse response) {
		
		
		return null;
	}
	*/
	
}

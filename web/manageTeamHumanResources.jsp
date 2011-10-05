<%@ include file="header.jsp" %>
<%@page import="com.marklabs.HRDept.TeamHR"%>

<%
	TeamHR thisPeriodTeamHR = (TeamHR) request.getAttribute(Constants.TEAM_HUMAN_RESOURCES);
	TeamHR previousPeriodTeamHR = (TeamHR) request.getAttribute(Constants.TEAM_HUMAN_RESOURCES_PREVIOUS);
%>


<script type="text/javascript">
$(document).ready(function(){
  $("#teamHumanResourcesForm").submit(function(){
  	var thisForm = document.teamHumanResourcesForm;
  	thisForm.todo.value = 'saveTeamHumanResources';
    return true;
  });
  $("#teamHumanResourcesForm input.cancel").click(function(){
    window.location = "<%=CONTEXTPATH%>/humanResourcesDept.htm";
  });
});
</script>
<script type="text/javascript"> 
$.validator.setDefaults({
	highlight: function(input) {
		$(input).addClass("error");
	},
	unhighlight: function(input) {
		$(input).removeClass("error");
	}
});

$(document).ready(function() {
	
	$("#teamHumanResourcesForm").validate({
	
	});
	
	$("input.generate").click(function(){
		alert("Generate");
	});	
	
	$("input.generateTraining").click(function(){
		alert("Generate For Training");
	});	
	
});

</script>

<!-- Content -->
	<article class="container_12">
		
	<section class="grid_3">
			<div class="block-border"><div class="block-content">
				<h1>Reports</h1>				
				<ul class="collapsible-list with-bg">
					<li>
						<b class="toggle"></b>
						<span>Company Performance</span>
						<ul class="with-icon icon-report">
							<li><a href="reports.htm?reportName=TeamResult">Team Performance</a></li>
							<li><a href="reports.htm?reportName=BrandResult">Brand Performance</a></li>
							<li><a href="reports.htm?reportName=StockMarketReport">Stock market</a></li>
							<li><a href="reports.htm?reportName=RnDReport">R&D Report</a></li>
						</ul>
					</li>
					<li>
						<b class="toggle"></b>
						<span>Intelligence Reports</span>
						<ul class="with-icon icon-report">
							<li><a href="reports.htm?reportName=Benchmarking">Benchmarking</a></li>
							<li><a href="reports.htm?reportName=BrandCharacteristicReport">Brand Characteristics</a></li>
							<li><a href="reports.htm?reportName=BrandAwarenessReport">Brand Awareness</a></li>
							<li><a href="reports.htm?reportName=BrandPurchaseIntentionReport">Brand Purchase Intention</a></li>
							<li><a href="reports.htm?reportName=MarketShareReport">Market Share</a></li>
							<li><a href="reports.htm?reportName=SemanticScaleReport">Semantic Scale</a></li>
							<li><a href="reports.htm?reportName=MultiDimensionalScaleReport">Multi Dimensional Scale</a></li>
							<li><a href="reports.htm?reportName=GrowthMatrixReport">Growth Matrix</a></li>
							<li><a href="reports.htm?reportName=DemandForecastReport">Demand Forecast</a></li>
							<li><a href="reports.htm?reportName=CompetitiveAdvExpenseReport">Competitive Advertising Expense</a></li>
							<li><a href="reports.htm?reportName=ShoppingHabitsReport">Shopping Habits</a></li>
							<li><a href="reports.htm?reportName=DistributionCoverageReport">Distribution Coverage</a></li>
							<li><a href="reports.htm?reportName=DistributionMarketShareReport">Distribution Market Share</a></li>
							<li><a href="reports.htm?reportName=CompetitiveSalesForceReport">Competitive Sales Force</a></li>
							<li><a href="reports.htm?reportName=CompetitiveMarginReport">Competitive Margin</a></li>
							<li><a href="reports.htm?reportName=ExpertAdviceReport">Expert Advice</a></li>
						</ul>
					</li>
				</ul>
				
			</div></div>

		</section>



<section class="grid_9">
			<div class="block-border">
				<form class="block-content form" name="teamHumanResourcesForm" id="teamHumanResourcesForm" method="post" 
					action="humanResourcesDept.htm?do=manageTeamHumanResources">
				<input type="hidden" name="todo" id="todo"/>
				<h1>Human Resources</h1>

					<fieldset>
					<legend>Human Resource Management</legend>					
					<div class="columns">
	        			<div class="colx4-left">
						<span class="label"></span>
						</div>
						<div class="colx4-center1">
							<span class="label">Period (n-1)</span>	
						</div>
						<div class="colx4-center2">
							<span class="label">Period (n)</span>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Level 3 Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppLevel3SalesForce" id="ppLevel3SalesForce" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getLevel3SalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="level3SalesForce" id="level3SalesForce"
								value = "<%= ((thisPeriodTeamHR != null)?thisPeriodTeamHR.getLevel3SalesForce():0)%>">
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Level 2 Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppLevel2SalesForce" id="ppLevel2SalesForce" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getLevel2SalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="level2SalesForce" id="level2SalesForce"
								value = "<%= ((thisPeriodTeamHR != null)?thisPeriodTeamHR.getLevel2SalesForce():0)%>">
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>						

					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Level 1 Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppLevel1SalesForce" id="ppLevel1SalesForce" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getLevel1SalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="level1SalesForce" id="level1SalesForce"
								value = "<%= ((thisPeriodTeamHR != null)?thisPeriodTeamHR.getLevel1SalesForce():0)%>">
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Total Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppTotalSalesForce" id="ppTotalSalesForce" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTotalSalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="totalSalesForce" id="totalSalesForce" 
								class="past" disabled>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
							<input type="button" class="button generate" value="Generate" onClick="">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Hiring/Firing Cost (Rs.)</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppHiringFiringCost" id="ppHiringFiringCost" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getHiringFiringCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="hiringFiringCost" id="hiringFiringCost" 
								class="past" disabled>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Total Sales Cost (Rs.)</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppTotalSalesCost" id="ppTotalSalesCost" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTotalSalesCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="totalSalesCost" id="totalSalesCost"
								class="past" disabled>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					</fieldset>

					<fieldset>
					<legend>Training</legend>					

					<div class="columns">
	        			<div class="colx4-left">
						<span class="label"></span>
						</div>
						<div class="colx4-center1">
							<span class="label">Total Number Available</span>	
						</div>
						<div class="colx4-center2">
							<span class="label">Upgrade to next level</span>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Level 2 Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppLevel2SalesForce_training" id="ppLevel2SalesForce_training" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTrainingLevel2SalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="level2SalesForce_training" id="level2SalesForce_training"
								value = "<%= ((thisPeriodTeamHR != null)?thisPeriodTeamHR.getTrainingLevel2SalesForce():0)%>">
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Level 1 Sales Force</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppLevel1SalesForce_training" id="ppLevel1SalesForce_training" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTrainingLevel1SalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="level1SalesForce_training" id="level1SalesForce_training" 
								value = "<%= ((thisPeriodTeamHR != null)?thisPeriodTeamHR.getTrainingLevel1SalesForce():0)%>">
						</div>
						<div class="colx4-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Training Costs (Rs.)</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppTrainingCost" id=""ppTrainingCost"" disabled 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTrainingCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="trainingCost" id="trainingCost"
								class="past" disabled>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
							<input type="button" class="button generateTraining" value="Generate" onClick="">
						</div>
					</div>
					
					</fieldset>
					
				
				<div class="columns">
					<button type="submit" class="red" name="submit">Save</button>
					<button type="button" class="red" name="cancel">Cancel</button>
				</div>	

							
				
			</form></div>
		</section>

			<div class="clear"></div>
		
	</article>


<%@ include file="footer.jsp" %>
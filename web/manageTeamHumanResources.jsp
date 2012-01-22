<%@ include file="header.jsp" %>
<%@page import="com.marklabs.HRDept.TeamHR"%>

<%
	TeamHR thisPeriodTeamHR = (TeamHR) request.getAttribute(Constants.TEAM_HUMAN_RESOURCES);
	TeamHR previousPeriodTeamHR = (TeamHR) request.getAttribute(Constants.TEAM_HUMAN_RESOURCES_PREVIOUS);
	int currentPeriod = (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD);
%>


<script type="text/javascript">
$(document).ready(function(){
  $("#teamHumanResourcesForm").submit(function(){
  	var thisForm = document.teamHumanResourcesForm;
  	var confirmMessage = "Modifying the Sales Force, will reset the sales force allocations done to different Brands. Please visit Sales Team Page and reallocate sales force.";
  	thisForm.todo.value = 'saveTeamHumanResources';
  	if(window.confirm(confirmMessage))
    	return true;
    else 
    	return false;

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

$.validator.methods.equal = function(value, element, param) {
	return value == param;
};

$(document).ready(function() {
	
	$("#teamHumanResourcesForm").validate({
	rules: {
			level1SalesForce_training: {
				required: true,
				number: true,
				digits: true,
				min: 0,
				max: $("#ppLevel1SalesForce_training").val()
			},
			level2SalesForce_training: {
				required: true,
				number: true,
				digits: true,
				min: 0,
				max: $("#ppLevel2SalesForce_training").val()
			},
			level1SalesForce: {
				required: true,
				number: true,
				digits: true,
				min: 1
			},
			level2SalesForce: {
				required: true,
				number: true,
				digits: true,
				min: 1
			},
			level3SalesForce: {
				required: true,
				number: true,
				digits: true,
				min: 1
			}
		}
	});
	
	$("input.generate").click(function(){
		
		var l3SalesForce = $("#level3SalesForce").val();
		var l2SalesForce = $("#level2SalesForce").val();
		var l1SalesForce = $("#level1SalesForce").val();
		
		var ppL3SalesForce = $("#ppLevel3SalesForce").val();
		var ppL2SalesForce = $("#ppLevel2SalesForce").val();
		var ppL1SalesForce = $("#ppLevel1SalesForce").val();
		
		var currentPeriod = <%= currentPeriod %>;
		var totalSalesForce = parseInt(l3SalesForce) + parseInt(l2SalesForce) + parseInt(l1SalesForce);
		var hiringFiringCost = (Math.abs(l3SalesForce - ppL3SalesForce) * 26000) + 
			(Math.abs(l2SalesForce - ppL2SalesForce) * 12000) +
			(Math.abs(l1SalesForce - ppL1SalesForce) * 7000); 
		
		var totalSalesCost = ((l3SalesForce * 26000) + (l2SalesForce * 12000) + (l1SalesForce * 7000));
		
		 $("#totalSalesForce").val(totalSalesForce);
		 $("#hiringFiringCost").val(hiringFiringCost);
		 $("#totalSalesCost").val(totalSalesCost);
		
	});	
	
	$("input.generateTraining").click(function(){
	
		var trainingL2SalesForce = $("#level2SalesForce_training").val(); 
		var trainingL1SalesForce = $("#level1SalesForce_training").val(); 
		var totalTrainingCost = (trainingL2SalesForce * 10000) + (trainingL1SalesForce * 7000);
		
		$("#trainingCost").val(totalTrainingCost);
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
							<li><a href="reports.htm?reportName=TeamBalanceSheet">Team Balance Sheet</a></li>
							<li><a href="reports.htm?reportName=TeamProfitLossStatement">Team Profit & Loss</a></li>
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
							<li><a href="reports.htm?reportName=MultiDimensionalScaleReport">Multi Dimensional Scale</a></li>
							<li><a href="reports.htm?reportName=GrowthMatrixReport">Growth Matrix</a></li>
							<li><a href="reports.htm?reportName=DemandForecastReport">Demand Forecast</a></li>
							<li><a href="reports.htm?reportName=CompetitiveAdvExpenseReport">Competitive Advertising Expense</a></li>
							<li><a href="reports.htm?reportName=ShoppingHabitsReport">Shopping Habits</a></li>
							<li><a href="reports.htm?reportName=DistributionCoverageReport">Distribution Coverage</a></li>
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
							<span class="label">Period <%= (currentPeriod - 1) %></span>	
						</div>
						<div class="colx4-center2">
							<span class="label">Period <%= (currentPeriod) %></span>
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
							<input type="text" name="ppLevel3SalesForce" id="ppLevel3SalesForce" readonly 
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
							<input type="text" name="ppLevel2SalesForce" id="ppLevel2SalesForce" readonly 
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
							<input type="text" name="ppLevel1SalesForce" id="ppLevel1SalesForce" readonly 
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
							<input type="text" name="ppTotalSalesForce" id="ppTotalSalesForce" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTotalSalesForce():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="totalSalesForce" id="totalSalesForce" 
								class="past" readonly>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
							<input type="button" class="button generate" value="Generate" onClick="" id="generate1">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx4-left">
							<span class="label"></span>
							<strong>Hiring/Firing Cost (Rs.)</strong>
						</div>
						<div class="colx4-center1">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppHiringFiringCost" id="ppHiringFiringCost" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getHiringFiringCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="hiringFiringCost" id="hiringFiringCost" 
								class="past" readonly>
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
							<input type="text" name="ppTotalSalesCost" id="ppTotalSalesCost" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTotalSalesCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="totalSalesCost" id="totalSalesCost"
								class="past" readonly>
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
							<input type="text" name="ppLevel2SalesForce_training" id="ppLevel2SalesForce_training" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getLevel2SalesForce():0)%>" 
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
							<input type="text" name="ppLevel1SalesForce_training" id="ppLevel1SalesForce_training" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getLevel1SalesForce():0)%>" 
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
							<input type="text" name="ppTrainingCost" id=""ppTrainingCost"" readonly 
								value = "<%= ((previousPeriodTeamHR != null)?previousPeriodTeamHR.getTrainingCost():0)%>" 
								class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx4-center2">
							<span class="label"></span>
							<input type="text" name="trainingCost" id="trainingCost"
								class="past" readonly>
						</div>
						<div class="colx4-right">
							<span class="label"></span>
							<input type="button" class="button generateTraining" value="Generate" onClick="" id="generate2">
						</div>
					</div>
					
					</fieldset>
					
				
				<div class="columns">
					<button type="submit" class="red" name="submit" id="submit">Save</button>
					<button type="button" class="red" name="cancel">Cancel</button>
				</div>	

							
				
			</form></div>
		</section>

			<div class="clear"></div>
		
	</article>


<%@ include file="footer.jsp" %>
<%@ include file="header.jsp" %>
<%@page import="com.marklabs.operationsDept.TeamOperations"%>

<%
	TeamOperations teamOperations = (TeamOperations) request.getAttribute(Constants.TEAM_OPERATIONS);
%>

<script type="text/javascript">
$(document).ready(function(){
  $("#teamOperationsForm").submit(function(){
  	var thisForm = document.teamOperationsForm;
  	thisForm.todo.value = 'saveTeamOperations';
    return true;
  });
  $("#teamOperationsForm input.cancel").click(function(){
    window.location = "<%=CONTEXTPATH%>/operationsDept.htm";
  });
});
</script>
<script type="text/javascript"> 
$.validator.setDefaults({
});

$(document).ready(function() {
	
	$("#teamOperationsForm").validate({

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
				<form class="block-content form" name="teamOperationsForm" id="teamOperationsForm" method="post" 
					action="operationsDept.htm?do=manageTeamOperations">
				<input type="hidden" name="todo" id="todo"/>	
				<h1>Operations</h1>

					<fieldset>
					<legend>Plant Capacity</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Max Production Capacity</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span>	
							<input type="text" name="currentDebt" id="currentDebt" class="past" disabled
							value = "<%= ((teamOperations != null)?teamOperations.getMaximumCapacity():0)%>">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Choose from the following options:</strong>
					</div>
					</div>
					<div class="columns">
	        			<div class="colx1">
							<span class="label"></span>
							<input type="radio" name="capacityIncreaseSelection" value="0:0" id="capacity1" checked> Continue with the same capacity
					</div>
	        			<div class="colx1">
							<span class="label"></span>
							<input type="radio" name="capacityIncreaseSelection" value="50000:3000000" id="capacity2"> 
								Capacity Increase : 50,000 units Cost : Rs. 30,00,000
					</div>
	        			<div class="colx1">
							<span class="label"></span>
							<input type="radio" name="capacityIncreaseSelection" value="100000:4000000" id="capacity3"> 
								Capacity Increase : 100,000 units  Cost : Rs. 40,00,000
					</div>
	        			<div class="colx1">
							<span class="label"></span>
							<input type="radio" name="capacityIncreaseSelection" value="150000:4500000" id="capacity4"> 
								Capacity Increase : 150,000 units Cost : Rs. 45,00,000
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
<%@ include file="header.jsp" %>


<script type="text/javascript">
$(document).ready(function(){
  $("#teamHumanResourcesForm").submit(function(){
    return true;
  });
  $("#teamHumanResourcesForm input.cancel").click(function(){
    window.location = "<%=CONTEXTPATH%>/marketingTeam.htm";
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
		rules: {
			ppBaseRnd: "required",
			tpBaseRnd: "required",
			ppProdLevel: {
				required: true,
				number: true
			},
			thisPeriodBrandProdLevel: {
				required: true,
				number: true,
				range: [0, 10000000]
			},
			ppInventorySold: {
				required: true,
				number: true
			},
			tpInventorySold: {
				required: true,
				number: true
			},
			ppPrice: {
				required: true,
				number: true
			},
			thisPeriodBrandRetailPrice: {
				required: true,
				number: true,
				range: [1, 700]
			}
		}
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
				<h1>Human Resources</h1>

					<fieldset>
					<legend>Human Resource Management</legend>					
					<div class="columns">
	        			<div class="colx3-left">
						<span class="label"></span>
						</div>
						<div class="colx3-center">
							<span class="label">Period (n-1)</span>	
						</div>
						<div class="colx3-right">
							<span class="label">Period (n)</span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Level 3 Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Level 2 Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>						

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Level 1 Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Total Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Hiring/Firing Cost (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Total Sales Cost (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					</fieldset>

					<fieldset>
					<legend>Training</legend>					

					<div class="columns">
	        			<div class="colx3-left">
						<span class="label"></span>
						</div>
						<div class="colx3-center">
							<span class="label">Total Number Available</span>	
						</div>
						<div class="colx3-right">
							<span class="label">Upgrade to next level</span>
						</div>
					</div>
					
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Level 2 Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Level 1 Sales Force</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Training Costs (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppBaseRnd" id="ppBaseRnd" disabled 
								value = "" class="past"><span class="check-past"></span></span></p>
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="tpBaseRnd" id="tpBaseRnd" disabled 
								value = "" class="past">
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
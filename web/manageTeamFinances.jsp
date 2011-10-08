<%@ include file="header.jsp" %>
<%@page import="com.marklabs.financeDept.TeamFinance"%>
<%@page import="java.text.DecimalFormat"%>
<%
	TeamFinance teamFinances = (TeamFinance)request.getAttribute(Constants.TEAM_FINANCES);
	DecimalFormat df = new DecimalFormat("#.##");
%>

<script type="text/javascript">
$(document).ready(function(){
  $("#teamFinancesForm").submit(function(){
  	var thisForm = document.teamFinancesForm;
  	thisForm.todo.value = 'saveTeamFinances';
    return true;
  });
  $("#teamFinancesForm input.cancel").click(function(){
    window.location = "<%=CONTEXTPATH%>/financeDept.htm";
  });
  $('#debtAppliedFor').keyup(function () {
        if ($.trim(this.value) == "") {
          $('#generatedebt').attr("disabled", true);
          $('#generatedCurrentEquity').val("");
          $('#generatedNewDebt_equityRatio').val("");
          $('#generatedROI').val("");
          $('#generatedQuarterlyInterestPayable').val("");
        }
      else {
            $('#generatedebt').removeAttr("disabled");
      }
    });
  $('#generatedebt').click(function () {
	  if($('#generatedNewDebt_equityRatio').val > 1) {
	    $('#submit').attr("disabled", true);
	  }
	else {
	    $('#submit').removeAttr("disabled");
	  }
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
	
$("#teamFinancesForm").validate({
		rules: {
			debtAppliedFor: {
				required: true,
				number: true,
				digits: true
			}
		}
	});

	$("input.generate").click(function(){
		var debtAppliedFor = $("#debtAppliedFor").val();
		var currentEquity = <%= teamFinances != null?teamFinances.getEquity():0%>;
		var currentDebt = <%= teamFinances != null? teamFinances.getDebt():0%>
		var interestPayable = <%= teamFinances != null? teamFinances.getInterestPayable():0%>
		
		var newTotalDebt = parseInt(debtAppliedFor) + parseInt(currentDebt);
		var newDebtPerEquityRatio = currentEquity > 0?parseFloat(newTotalDebt/currentEquity):0;
		var newROI = 0.1 + 0.05*parseFloat(newDebtPerEquityRatio);
		var newInterestPayable = interestPayable + parseInt((newROI*debtAppliedFor)/4)
		
		$("#generatedCurrentEquity").val(currentEquity);
		$("#generatedNewDebt_equityRatio").val(newDebtPerEquityRatio.toFixed(2));
		$("#generatedROI").val(newROI.toFixed(2));
		$("#generatedQuarterlyInterestPayable").val(newInterestPayable);
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
				<form class="block-content form" name="teamFinancesForm" id="teamFinancesForm" method="post" 
					action="financeDept.htm?do=manageTeamFinances">
				<input type="hidden" name="todo" id="todo"/>
				
				<h1>Finances</h1>
				
					<fieldset>
					<legend>Sources of Funds</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Debt (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="currentDebt" id="currentDebt" 
								value = "<%= ((teamFinances != null)?teamFinances.getDebt():0)%>" 
								disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Equity (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="currentEquity" id="currentEquity" 
								value = "<%= ((teamFinances != null)?teamFinances.getEquity():0)%>" 
								disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Debt/Equity Ratio</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="currentDebt_equityRatio" id="currentDebt_equityRatio" 
								value = "<%= ((teamFinances != null)?df.format(teamFinances.getDebtEquityRatio()):0)%>" 
								disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx1">
							<span class="label"></span>
							<a href="#">Click to see debt-equity ratio and rate of interest table.</a>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>New Debt applied for (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="debtAppliedFor" id="debtAppliedFor">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="button" class="button generate" value="Generate" id="generatedebt" disabled>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Equity (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="generatedCurrentEquity" id="generatedCurrentEquity" disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>New Debt/Equity Ratio</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="generatedNewDebt_equityRatio" id="generatedNewDebt_equityRatio" disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Rate of Interest (%)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="generatedROI" id="generatedROI" disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Quarterly Interest Payable (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="generatedQuarterlyInterestPayable" id="generatedQuarterlyInterestPayable" 
								disabled class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
				</fieldset>

				
				<div class="columns">
					<button type="submit" class="red" name="submit" id="submit" disabled>Save</button>
					<button type="button" class="red" name="cancel">Cancel</button>
				</div>	

							
				
			</form></div>
		</section>

			<div class="clear"></div>
		
	</article>


<%@ include file="footer.jsp" %>
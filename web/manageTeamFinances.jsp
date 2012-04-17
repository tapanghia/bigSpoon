<%@ include file="header.jsp" %>
<%@page import="com.marklabs.financeDept.TeamFinance"%>
<%@page import="java.text.DecimalFormat"%>
<%
	TeamFinance teamFinances = (TeamFinance)request.getAttribute(Constants.TEAM_FINANCES);
	DecimalFormat df = new DecimalFormat("#.##");
%>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);

      function drawChart() {

	// *********** Pie Chart **************
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Task');
        data.addColumn('number', 'Hours per Day');
        data.addRows([
          ['Long Term Debt',    11],
          ['Current Debt',      2],
          ['Common Stock',  2],
          ['Retained Earnings', 2],
          ['Accounts Payable',    7]
        ]);

        var options = {
          title: 'Liabilities and Owners Equity'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_div1'));
        chart.draw(data, options);

	//****************** Column Chart ***********************
        //var barsVisualization;	
	data = new google.visualization.DataTable();
	    data.addColumn('string', 'Year');
	    data.addColumn('number', 'Score');
	    data.addRows([
	      ['Period 1',3.6],
	      ['Period 2',4.1],
	      ['Period 3',3.8],
	      ['Period 4',3.9],
	      ['Period 5',4.6],
	    ]);

	options = {
		          title: 'Stock Price Index'
		        };


	    //barsVisualization = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
	    //barsVisualization.draw(data, null);
	    new google.visualization.BarChart(document.getElementById('chart_div2')).draw(data, null);	
	    // Add our over/out handlers.
	    //google.visualization.events.addListener(barsVisualization, 'onmouseover', barMouseOver);
	    //google.visualization.events.addListener(barsVisualization, 'onmouseout', barMouseOut);
	
	// ******************* Column Chart ***********
	data = new google.visualization.DataTable();
	  var raw_data = [['Team A', 1336060, 1538156, 1576579, 1600652, 1968113, 1901067],
		          ['Team B', 3817614, 3968305, 4063225, 4604684, 4013653, 6792087],
		          ['Team C', 974066, 928875, 1063414, 940478, 1037079, 1037327],
		          ['Team D', 1104797, 1151983, 1156441, 1167979, 1207029, 1284795],
		          ['Team F', 6651824, 5940129, 5714009, 6190532, 6420270, 6240921],
		          ['Team G', 15727003, 17356071, 16716049, 18542843, 19564053, 19830493]];
	  
	  var years = [1, 2, 3, 4, 5, 6];
		          
	  data.addColumn('string', 'Year');
	  for (var i = 0; i  < raw_data.length; ++i) {
	    data.addColumn('number', raw_data[i][0]);    
	  }
	  
	  data.addRows(years.length);

	  for (var j = 0; j < years.length; ++j) {    
	    data.setValue(j, 0, years[j].toString());    
	  }
	  for (var i = 0; i  < raw_data.length; ++i) {
	    for (var j = 1; j  < raw_data[i].length; ++j) {
	      data.setValue(j-1, i+1, raw_data[i][j]);    
	    }
	  }
	  
	  // Create and draw the visualization.
	  new google.visualization.ColumnChart(document.getElementById('chart_div3')).
	      draw(data,
		   {title:"Revenue Chart", 
		    hAxis: {title: "Period"}}
	      );

	// *************** Bubble chart *********************
	    data = new google.visualization.DataTable();
	    data.addColumn('string', 'ID');
	    data.addColumn('number', 'Life Expectancy');
	    data.addColumn('number', 'Fertility Rate');
	    data.addColumn('string', 'Region');
	    data.addColumn('number', 'Population');
	    data.addRows([
	      ['', .66, 1.67, 'Team A', 33739900],
	      ['', .84, 1.36, 'Team B', 81902307],
	      ['', .6, 1.84, 'Team C', 5523095],
	      ['', .73, 2.78, 'Team D', 79716203],
	      ['', .05, 2, 'Team B', 61801570],
	      ['', .49, 1.7, 'Team C', 73137148],
	      ['', .09, 4.77, 'Team D', 31090763],
	      ['', .55, 2.96, 'Team C', 7485600],
	      ['', .6, 1.54, 'Team B', 141850000],
	      ['', .09, 2.05, 'Team A', 307007000]
	    ]);

	    var options = {
	      title: 'Growth Matrix',
	      hAxis: {title: 'Growth Potential'},
	      vAxis: {title: 'Relative Market Share'},
	      bubble: {textStyle: {fontSize: 11}}
	    };

	    // Create and draw the visualization.
	    new google.visualization.BubbleChart(
		document.getElementById('chart_div4')).draw(data, options);
		
		// ***************** Motion Chart ********************
		data = new google.visualization.DataTable();
	  data.addRows(6);
	  data.addColumn('string', 'Fruit');
	  data.addColumn('date', 'Date');
	  data.addColumn('number', 'Sales');
	  data.addColumn('number', 'Expenses');
	  data.addColumn('string', 'Location');
	  data.setValue(0, 0, 'Apples');
	  data.setValue(0, 1, new Date (1988,0,1));
	  data.setValue(0, 2, 1000);
	  data.setValue(0, 3, 300);
	  data.setValue(0, 4, 'East');
	  data.setValue(1, 0, 'Oranges');
	  data.setValue(1, 1, new Date (1988,0,1));
	  data.setValue(1, 2, 950);
	  data.setValue(1, 3, 200);
	  data.setValue(1, 4, 'West');
	  data.setValue(2, 0, 'Bananas');
	  data.setValue(2, 1, new Date (1988,0,1));
	  data.setValue(2, 2, 300);
	  data.setValue(2, 3, 250);
	  data.setValue(2, 4, 'West');
	  data.setValue(3, 0, 'Apples');
	  data.setValue(3, 1, new Date(1988,1,1));
	  data.setValue(3, 2, 1200);
	  data.setValue(3, 3, 400);
	  data.setValue(3, 4, "East");
	  data.setValue(4, 0, 'Oranges');
	  data.setValue(4, 1, new Date(1988,1,1));
	  data.setValue(4, 2, 900);
	  data.setValue(4, 3, 150);
	  data.setValue(4, 4, "West");
	  data.setValue(5, 0, 'Bananas');
	  data.setValue(5, 1, new Date(1988,1,1));
	  data.setValue(5, 2, 788);
	  data.setValue(5, 3, 617);
	  data.setValue(5, 4, "West");
	
	  new google.visualization.MotionChart(document.getElementById('motionChart_div')).draw(data, {'width': 800, 'height': 400});

      }

   

  function barMouseOver(e) {
    barsVisualization.setSelection([e]);
  }

  function barMouseOut(e) {
    barsVisualization.setSelection([{'row': null, 'column': null}]);
  }
	
    </script>


<script type="text/javascript">
$(document).ready(function(){
  $("#teamFinancesForm").submit(function(){
  	//var thisForm = document.teamFinancesForm;
  	//thisForm.todo.value = 'saveTeamFinances';
    //return true;
    return false;
  });
  $("#teamFinancesForm input.cancel").click(function(){
    window.location = "<%=CONTEXTPATH%>/financeDept.htm";
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
	
$("#teamFinancesForm").validate({
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
							<li><a href="reports.htm?reportName=ShoppingHabitsReport">Shopping Habits</a></li>
							<li><a href="reports.htm?reportName=DistributionCoverageReport">Distribution Coverage</a></li>
							<li><a href="reports.htm?reportName=InventoryManagement">Inventory Management</a></li>
							<li><a href="reports.htm?reportName=CompetitiveAdvExpenseReport">Competitive Advertising Expense</a></li>
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
					<!--
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
								readonly class="past">
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
								readonly class="past">
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
								readonly class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
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
							<input type="button" class="button generate" value="Generate" id="generatedebt">
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Current Equity (Rs.)</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="generatedCurrentEquity" id="generatedCurrentEquity" readonly class="past">
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
							<input type="text" name="generatedNewDebt_equityRatio" id="generatedNewDebt_equityRatio" readonly class="past">
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
							<input type="text" name="generatedROI" id="generatedROI" readonly class="past">
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
								readonly class="past">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
				</fieldset>
				-->
				<!-- New Demo code starts here -->
				
				<fieldset>
					<legend>Common Stock</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Shares Outstanding</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="sharesOutstanding" id="sharesOutstanding" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Price Per Share</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="pricePerShare" id="pricePerShare" 
								value = "" >
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Earnings Per Share</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="earningsPerShare" id="earningsPerShare" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
								
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Max Stock Issue</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="maxStockIssue" id="maxStockIssue" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>			
							
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Issue Stock</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="issueStock" id="issueStock" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>		
										
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Max Stock Retire</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="maxStockRetire" id="maxStockRetire" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>					
								
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Retire Stock</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="retireStock" id="retireStock" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>			
								
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Dividend Per Share</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="dividendPerShare" id="dividendPerShare" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>			
				</fieldset>
				
				<fieldset>
					<legend>Current Debt</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Interest Rate</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="interestRate" id="interestRate" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Due This Year</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="dueThisYear" id="dueThisYear" 
								value = "" >
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Borrow</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="borrow" id="borrow" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
				</fieldset>
				
				<fieldset>
					<legend>Long Term Debt</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Retire Long Term Debt</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="retireLongTermDebt" id="retireLongTermDebt" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Issue Long Term Debt</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="issueLongTermDebt" id="issueLongTermDebt" 
								value = "" >
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Long Term Interest Rate</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="longTermIRate" id="longTermIRate" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Maximum Issue this year</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="maxIssueThisYear" id="maxIssueThisYear" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
				</fieldset>
				
				
				
				<!-- New Demo code ends here-->
				
								
				<div class="columns">
					<button type="submit" class="red" name="submit" id="submit">Save</button>
					<button type="button" class="red" name="cancel">Cancel</button>
				</div>	

				<fieldset>
					<legend>Charts</legend>
					<div id="charts">
						    <div id="chart_div1" style="width: 430px; height: 300px; float:left;"></div>
						</div>					
				</fieldset>			
				
			</form></div>
		</section>

			<div class="clear"></div>
		
	</article>


<%@ include file="footer.jsp" %>
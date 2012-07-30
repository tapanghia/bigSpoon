<%@ include file="header.jsp" %>

<%

	String marketShareChartString = (String)request.getSession().getAttribute("MARKET_SHARE");
	String stockPriceIndexChartString = (String)request.getSession().getAttribute("STOCK_PRICE_INDEX");
	String teamRevenueAndProfitChartString = (String)request.getSession().getAttribute("TEAM_REVENUE_AND_PROFIT");
	String brandGrowthMatrixChartString = (String)request.getSession().getAttribute("BRAND_GROWTH_MATRIX");

%>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);

      function drawChart() {
	
	// *********** Pie Chart **************
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Team Name');
        data.addColumn('number', 'Market Share');
        data.addRows(<%= marketShareChartString%>);

        var options = {
          title: 'Market Share'
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_div3'));
        chart.draw(data, options);

	//****************** Line Chart ***********************
	data = google.visualization.arrayToDataTable(<%= stockPriceIndexChartString%>);
	
        var options = {
          title: 'Stock Price Index'
        };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div1'));
        chart.draw(data, options);
        
    // **********************Column Chart ***********************
    data = google.visualization.arrayToDataTable(<%= teamRevenueAndProfitChartString%>);

        var options = {
          title: 'Revenue and Profit',
          hAxis: {title: 'Period', titleTextStyle: {color: 'red'}}
        };

        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
        chart.draw(data, options);
        
        
	// *************** Bubble chart *********************
	    data = google.visualization.arrayToDataTable(<%= brandGrowthMatrixChartString%>);

        var options = {
          title: 'Growth Matrix',
          hAxis: {title: 'Relative Market Share', direction: -1, maxValue: 1, minValue: 0},
          vAxis: {title: 'Growth Potential', maxValue: 1, minValue:0},
          bubble: {textStyle: {fontSize: 10}},
          sizeAxis: {minValue: 15,  maxSize: 15}
        };

        var chart = new google.visualization.BubbleChart(document.getElementById('chart_div4'));
        chart.draw(data, options);
		
      }

   

  function barMouseOver(e) {
    barsVisualization.setSelection([e]);
  }

  function barMouseOut(e) {
    barsVisualization.setSelection([{'row': null, 'column': null}]);
  }
	
</script>


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
			<div class="block-border"><div class="block-content">
			
				<div id="charts1" style="width:100%; float:left">
				    <div id="chart_div1" style="width: 400px; height: 300px; float:right;"></div>
					<div id="chart_div2" style="width: 400px; height: 300px;"></div>
				</div>	
				<div id="charts2" style="width:100%; float:left">
					<div id="chart_div3" style="width: 800px; height: 400px;"></div>
					<div id="chart_div4" style="width: 800px; height: 400px;"></div>
				</div>
				<h1>Team Home</h1>
						<span style="color:#0083C3">Hi&nbsp;<i>Team,</i>&nbsp;&nbsp;Welcome to BizLabs.</span><br><br>
						<p style="text-align: justify;"><span style="color:#0083C3"><i>BizLabs</span></i> is an emerging economy growing at break-neck pace. 
						The whole world has its eyes on this country and all the big brands are
						eyeing a share of this lucrative pie. <span style="color:#0083C3"><i>Competition</i></span>, therefore, is as 
						intense as you can imagine.</p>
						<p style="text-align: justify;">Your team has been entrusted with the task of managing the brands 
						for the company <span style="color:#0083C3"><i><%=((request.getSession().getAttribute(Constants.TEAM_NAME)!= null)? (request.getSession().getAttribute(Constants.TEAM_NAME)):"NA") %></span></i>. It is going to be a 
						complex task involving in depth understanding of your products, 
						customer preferences and strategic moves of competing companies.</p>
						<p style="text-align: justify;">The company has been organized into different departments that you 
						must visit to take the relevant decisions. The inputs that you take are 
						specific to <span style="color:#0083C3"><i>6</i> key departments i.e. Finance, Operations, Marketing, Sales, HR and Market Intelligence</span>. The <span style="color:#0083C3">Board Room</span> is the most sophisticated room of the firm where your decisions
				   		shall be evaluated and scrutinized. The tab <span style="color:#0083C3">Basic Description </span>gives 
						you a detailed analysis of the region, their consumers, distribution 
						channels, etc.</p>
						<p style="text-align: justify;">The very first step in marketing your products is to <span style="color:#0083C3"><i>know your target 
						segment</i></span>. You need to choose segment or segments you want to cater to 
						from among the five segments explained under the tab Basic Description.
						<br><br>Secondly, you 
						need to <span style="color:#0083C3"><i>use proper communication channel mix</i></span> and effective advertisement
						budget on the segment/segments you have targeted using the help of the
						Marketing Department. 
						<br><br>The third step is to <span style="color:#0083C3"><i>create an effective 
						distribution channel</i></span> for your product using the help of the Sales
						Department. The Intelligence Department will help you by providing
						<span style="color:#0083C3"><i>market research</i></span> reports, which you need to analyze and take effective
						measures accordingly. You shall be <span style="color:#0083C3"><i>reviewed on a quarterly basis </i></span>and 
						your input decisions shall be evaluated in the boardroom where meetings
						take place once in every quarter when the financial reports of the
						company are disclosed. </p>
						<p style="text-align: justify;">To get you started, instructions for all the 
						departments are presented to you on this page under different tabs on 
						the top of the page. </p>
						<span style="color:#0083C3"><i>All the very best for an exciting time ahead&nbsp;!!!</i></span>
						</div></div></section>
<div class="clear"></div>
		
	</article>
	
	<!-- End content -->

<%@ include file="footer.jsp" %>
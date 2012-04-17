<%@ include file="header.jsp" %>

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
          ['Team A',    11],
          ['Team B',      2],
          ['Team C',  2],
          ['Team D', 2],
          ['Team E',    7]
        ]);

        var options = {
          title: 'Market Share'
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
				<h1>Team Home</h1>
						<span style="color:#0083C3">Hi&nbsp;<i>Team,</i>&nbsp;&nbsp;Welcome to BizLabs.</span><br><br>
						
						<div id="charts">
						    <div id="chart_div1" style="width: 430px; height: 300px; float:left;"></div>
							<div id="chart_div2" style="width: 430px; height: 300px; float:left;"></div>
							<div id="chart_div3" style="width: 430px; height: 300px; float:left;"></div>
							<div id="chart_div4" style="width: 430px; height: 300px; float:left;"></div>
						</div>
						
						
						<p style="text-align: justify;"><span style="color:#0083C3"><i>BizLabs</span></i> is an emerging economy growing at breath-neck pace. 
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
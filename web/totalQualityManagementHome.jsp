<%@ include file="header.jsp" %>

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);

      function drawChart() {

	
	//****************** Column Chart ***********************
        //var barsVisualization;	
	var data = new google.visualization.DataTable();
	    data.addColumn('string', 'Year');
	    data.addColumn('number', 'Score');
	    data.addRows([
	      ['2005',3.6],
	      ['2006',4.1],
	      ['2007',3.8],
	      ['2008',3.9],
	      ['2009',4.6],
	    ]);
	    
	    var options = {
          title: 'Reduction in the cost of goods for the year just ended.'
        };

	    //barsVisualization = new google.visualization.ColumnChart(document.getElementById('chart_div2'));
	    //barsVisualization.draw(data, null);
	    new google.visualization.BarChart(document.getElementById('chart_div2')).draw(data, options);	
	    // Add our over/out handlers.
	    //google.visualization.events.addListener(barsVisualization, 'onmouseover', barMouseOver);
	    //google.visualization.events.addListener(barsVisualization, 'onmouseout', barMouseOut);
	
	// ******************* Column Chart ***********
	data = new google.visualization.DataTable();
	  var raw_data = [['Team A', 1336060, 1538156, 1576579, 1600652, 1968113, 1901067],
		          ['Team B', 3817614, 3968305, 4063225, 4604684, 4013653, 6792087],
		          ['Team C', 974066, 928875, 1063414, 940478, 1037079, 1037327],
		          ['Team D', 1104797, 1151983, 1156441, 1167979, 1207029, 1284795],
		          ['Team E', 6651824, 5940129, 5714009, 6190532, 6420270, 6240921],
		          ['Team F', 15727003, 17356071, 16716049, 18542843, 19564053, 19830493]];
	  
	  var years = [2003, 2004, 2005, 2006, 2007, 2008];
		          
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
		   {title:"R&D Cycle Time Reductions for the year just ended.", 
		    hAxis: {title: "Year"}}
	      );

	
      }

   

  function barMouseOver(e) {
    barsVisualization.setSelection([e]);
  }

  function barMouseOut(e) {
    barsVisualization.setSelection([{'row': null, 'column': null}]);
  }
	
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
				
				<h1>TQM Initiative</h1>
				<!-- New Demo code starts here -->
				
				<fieldset>
					<legend>Process Management Initiatives</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>CPI Systems</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="cpiSystems" id="cpiSystems" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Vendor/JIT</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="vendorJIT" id="vendorJIT" 
								value = "" >
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Quality Initiative Training</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="qualityInitiativeTraining" id="qualityInitiativetraining" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
								
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Channel Support Systems</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="channelSupportSystems" id="channelSupportSystems" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>			
							
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Concurrent Engineering</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="concurrentEngg" id="concurrentEngg" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>		
										
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>UNEP Green Programs</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="greenProgs" id="greenProgs" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>					
				</fieldset>
				
				<fieldset>
					<legend>TQM Initiatives</legend>					

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Benchmarking</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="benchmarking" id="benchmarking" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Quality Function Deployment Effort</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="deploymentEffort" id="deploymentEffort" 
								value = "" >
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>CCE/6 Sigma Training</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="6SigmaTraining" id="6SigmaTraining" 
								value = "">
						</div>
						<div class="colx3-right">
							<span class="label"></span>
						</div>
					</div>
					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>GEMI TQEM Sustainability Initiatives</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="sustainabilityInit" id="sustainabilityInit" 
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
						<div id="chart_div2" style="width: 400px; height: 300px; float:right;"></div>
						<div id="chart_div3" style="width: 400px; height: 300px;"></div>
					</div>				
				</fieldset>		
				
							
				
			</form></div>
		</section>

			<div class="clear"></div>
		
	</article>


<%@ include file="footer.jsp" %>
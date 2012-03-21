<%@ include file="commons.jspf"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.util.TreeMap"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.Collection"%>
<%@ page import="com.marklabs.web.controllers.Constants" %>
<%@ page import="com.marklabs.tabSelector.TabConstants" %>
<% 
  String currentLink = null;
  if (null !=  session.getAttribute("CURRENT_LINK")){
    currentLink = (String)session.getAttribute("CURRENT_LINK");
    currentLink = currentLink.toLowerCase();
  }
  
  Map<TabConstants, Boolean> tabConfMap = (Map<TabConstants, Boolean>)session.getAttribute(Constants.TAB_CONFIGURATOR);
%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>BizLabs: Business Strategy Simulation by Biziga Labs</title>
	<meta charset="utf-8">
	
	<!-- Global stylesheets -->
	<link href="css/reset.css" rel="stylesheet" type="text/css">
	<link href="css/common.css" rel="stylesheet" type="text/css">
	<link href="css/form.css" rel="stylesheet" type="text/css">
	<link href="css/standard.css" rel="stylesheet" type="text/css">
	
	<!-- Comment/uncomment one of these files to toggle between fixed and fluid layout -->
	<!--<link href="css/960.gs.css" rel="stylesheet" type="text/css">-->
	<link href="css/960.gs.fluid.css" rel="stylesheet" type="text/css">
	
	<!-- Custom styles -->
	<link href="css/simple-lists.css" rel="stylesheet" type="text/css">
	<link href="css/block-lists.css" rel="stylesheet" type="text/css">
	<link href="css/table.css" rel="stylesheet" type="text/css">
	<link href="css/jquery-ui-1.8.7.custom.css" rel="stylesheet" type="text/css">
	
	<!-- Favicon -->
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
	
	<!-- Generic libs -->
	<script type="text/javascript" src="js/html5.js"></script>				<!-- this has to be loaded before anything else -->
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	
	<!-- Template libs -->
	<script type="text/javascript" src="js/jquery.accessibleList.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<script type="text/javascript" src="js/standard.js"></script>
	<!--[if lte IE 8]><script type="text/javascript" src="js/standard.ie.js"></script><![endif]-->
	<script type="text/javascript" src="js/jquery.tip.js"></script>
	<script type="text/javascript" src="js/jquery.hashchange.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	
	<!-- Custom styles lib -->
	<script type="text/javascript" src="js/list.js"></script>
		
</head>

<body>
<!-- The template uses conditional comments to add wrappers div for ie8 and ie7 - just add .ie or .ie7 prefix to your css selectors when needed -->
<!--[if lt IE 9]><div class="ie"><![endif]-->
<!--[if lt IE 8]><div class="ie7"><![endif]-->
	
	<!-- Header -->
	
	<!-- Server status -->
	<header><div class="container_12">
<div class="server-info2"><a href="login.htm?do=logout" class="button red" title="Logout">Logout</a> </div>
<div class="server-info"><img src="images/logo1.jpg" width="95%"></div>

		
	</div></header>
	<!-- End server status -->

	<!-- Main nav -->
	<nav id="main-nav">
		
		<ul class="container_12">
		<% if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HOME) && tabConfMap.get(TabConstants.HOME)) {%>
			<li class="home <%= (currentLink.equalsIgnoreCase("home"))?"current":"" %>"><a href="teamHome.htm" title="Home">Home</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HOME_DASHBOARD) && tabConfMap.get(TabConstants.HOME_DASHBOARD)) {%>
					<li><a href="teamHome.htm" title="Dashboard">Dashboard</a></li>
					<%}%>
					<% if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HOME_BASIC_DESCRIPTION) && tabConfMap.get(TabConstants.HOME_BASIC_DESCRIPTION)) {%>					
					<li><a href="javascript:window.open('basicDescription.jsp?', 'resizable=no, toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no');" title="Help">Basic Description</a></li>
					<%}%>
				</ul>
			</li>
		<%}%>	
			<!-- R&D Projects functionality is removed from bizLABS -->
			<!-- li class="write <%= (currentLink.equalsIgnoreCase("researchproject"))?"current":"" %>">
				<a href="researchProject.htm" title="R&D Team">R&DTeam</a>
				<ul>
					<li><a href="researchProject.htm" title="R&D Team Home">R&D Team Home</a></li>
					<li><a href="reports.htm?reportName=RnDReport" title="View R&D Reports">View R&D Reports</a></li>
					<li><a href="researchProject.htm?do=addResearchProject" title="Add Research Project">Add Research Project</a></li>
					<li><a href="researchProject.htm?do=getResearchProjectsForTeam" title="View/Edit Research Projects">View/Edit Research Projects</a></li>
				</ul>
			</li>-->
	
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.FINANCES) && tabConfMap.get(TabConstants.FINANCES)) {%>
			<li class="write <%= (currentLink.equalsIgnoreCase("FinanceDept"))?"current":"" %>">
				<a href="financeDept.htm" title="Finances">Finances</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.FINANCES_TEAM_HOME) && tabConfMap.get(TabConstants.FINANCES_TEAM_HOME)) {%>
					<li><a href="financeDept.htm" title="Finance Team Home">Finance Team Home</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.FINANCES_MANAGE_FINANCES) && tabConfMap.get(TabConstants.FINANCES_MANAGE_FINANCES)) { %>
					<li><a href="financeDept.htm?do=manageTeamFinances" title="Finances">Manage Finances</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.MARKETING) && tabConfMap.get(TabConstants.MARKETING)) {%>
			<li class="comments <%= (currentLink.equalsIgnoreCase("marketing"))?"current":"" %>"><a href="marketingTeam.htm" title="Marketing Team">MarketingTeam</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.MARKETING_TEAM_HOME) && tabConfMap.get(TabConstants.MARKETING_TEAM_HOME)) {%>
					<li><a href="marketingTeam.htm" title="MarketingTeam">Marketing Team</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.MARKETING_BRAND_MANAGEMENT) && tabConfMap.get(TabConstants.MARKETING_BRAND_MANAGEMENT)) {%>
					<li><a href="brandManagement.htm" title="Brand Management">Brand Management</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.MARKETING_PRODUCTION_AND_PRICING) && tabConfMap.get(TabConstants.MARKETING_PRODUCTION_AND_PRICING)) {%>
					<li><a href="productionPricing.htm" title="Production & Pricing">Production & Pricing</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.MARKETING_ADVERTISEMENT) && tabConfMap.get(TabConstants.MARKETING_ADVERTISEMENT)) {%>
					<li><a href="brandAdvertisement.htm" title="Advertisement">Advertisement</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.OPERATIONS) && tabConfMap.get(TabConstants.OPERATIONS)) {%>
			<li class="backup <%= (currentLink.equalsIgnoreCase("OperationsDept"))?"current":"" %>">
				<a href="operationsDept.htm" title="Operations">Operations</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.OPERATIONS_TEAM_HOME) && tabConfMap.get(TabConstants.OPERATIONS_TEAM_HOME)) {%>
					<li><a href="operationsDept.htm" title="Operations Team Home">Operations Team Home</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.OPERATIONS_MANAGE_OPERATIONS) && tabConfMap.get(TabConstants.OPERATIONS_MANAGE_OPERATIONS)) {%>
					<li><a href="operationsDept.htm?do=manageTeamOperations" title="Operations">Manage Operations</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HUMAN_RESOURCES) && tabConfMap.get(TabConstants.HUMAN_RESOURCES)) {%>
			<li class="users <%= (currentLink.equalsIgnoreCase("HumanResourcesDept"))?"current":"" %>">
				<a href="humanResourcesDept.htm" title="Human Resources">HumanResources</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HUMAN_RESOURCES_TEAM_HOME) && tabConfMap.get(TabConstants.HUMAN_RESOURCES_TEAM_HOME)) {%>
					<li><a href="humanResourcesDept.htm" title="Human Resource Team Home">Human Resource Team Home</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.HUMAN_RESOURCES_MANAGE_HR) && tabConfMap.get(TabConstants.HUMAN_RESOURCES_MANAGE_HR)) {%>
					<li><a href="humanResourcesDept.htm?do=manageTeamHumanResources" title="Human Resources">Manage Human Resources</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.SALES) && tabConfMap.get(TabConstants.SALES)) {%>
			<li class="medias <%= (currentLink.equalsIgnoreCase("sales"))?"current":"" %>">
			<a href="salesTeam.htm" title="Sales Team">SalesTeam</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.SALES_TEAM_HOME) && tabConfMap.get(TabConstants.SALES_TEAM_HOME)) {%>
					<li><a href="salesTeam.htm" title="Sales Team">Sales Team</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.SALES_FORCE_MANAGEMENT) && tabConfMap.get(TabConstants.SALES_FORCE_MANAGEMENT)) {%>
					<li><a href="salesTeam.htm?do=getSalesForceMgmt" title="Sales Force Management">Sales Force Management</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.INTELLIGENCE) && tabConfMap.get(TabConstants.INTELLIGENCE)) {%>
			<li class="settings <%= (currentLink.equalsIgnoreCase("intelligence"))?"current":"" %>"><a href="intelligenceTeam.htm" title="Intelligence Team">IntelligenceTeam</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.INTELLIGENCE_TEAM_HOME) && tabConfMap.get(TabConstants.INTELLIGENCE_TEAM_HOME)) {%>
					<li><a href="intelligenceTeam.htm" title="Intelligence Team">Intelligence Team</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.INTELLIGENCE_MARKET_RESEARCH) && tabConfMap.get(TabConstants.INTELLIGENCE_MARKET_RESEARCH)) {%>
					<li><a href="intelligenceTeam.htm?do=displayMarketResearch" title="Conduct Market Research">Conduct Market Research</a></li>
					<%}%>
				</ul>
			</li>
			<%}%>
			
			<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.BOARD_ROOM) && tabConfMap.get(TabConstants.BOARD_ROOM)) {%>
			<li class="stats <%= (currentLink.equalsIgnoreCase("boardroom"))?"current":"" %>"><a href="boardRoom.htm" title="Board Room">BoardRoom</a>
				<ul>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.BOARD_ROOM_HOME) && tabConfMap.get(TabConstants.BOARD_ROOM_HOME)) {%>
					<li><a href="boardRoom.htm" title="Board Room">Board Room</a></li>
					<%}%>
					<%if (tabConfMap != null && tabConfMap.containsKey(TabConstants.BOARD_ROOM_MARKET_NEWS) && tabConfMap.get(TabConstants.BOARD_ROOM_MARKET_NEWS)) {%>
					<li><a href="reports.htm?reportName=StockMarketReport" title="Market News">Market News</a></li>
					<%}%>
					<!-- li><a href="#" title="Proposed Marketing Plan">Proposed Marketing Plan</a></li-->
				</ul>
			</li>
			<%}%>
		</ul>
	</nav>
	<!-- End main nav -->

	<!-- Sub nav -->
	<div id="sub-nav"><div class="container_12">
		
	</div></div>
	<!-- End sub nav -->
	
	<div id="header-shadow"></div>
	<!-- End header -->
	
	<!-- Always visible control bar -->
	<div id="control-bar" class="grey-bg clearfix"><div class="container_12">
	
		<div class="float-left">
			<button type="button" onclick=""><%=((request.getSession().getAttribute(Constants.TEAM_NAME)!= null)? ("Team " + request.getSession().getAttribute(Constants.TEAM_NAME)):"NA") %></button>
		</div>
		
		<div class="float-right"> 
			<button type="button" class="red"><%= ((request.getSession().getAttribute(Constants.CURRENT_PERIOD)!= null)? ("Period " + (Integer)request.getSession().getAttribute(Constants.CURRENT_PERIOD)):"")%></button> 
			<button type="button" class="red"><%= ((request.getSession().getAttribute(Constants.CURRENT_BUDGET)!= null)? ("Budget: " + request.getSession().getAttribute(Constants.CURRENT_BUDGET)):"")%></button> 
		</div>
			
	</div></div>
	<!-- End control bar -->

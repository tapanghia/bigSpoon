<%@include file="header.jsp" %>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<%@page import="com.marklabs.brands.Brand" %>
<%@page import="com.marklabs.web.controllers.Constants" %>
<%@page import="com.marklabs.brandAdvertisement.BrandAdvertisement" %>
<%@page import="com.marklabs.perceptualObj.PerceptualObj" %>
<%@page import="com.marklabs.perceptualObj.PerceptualObjectiveScales" %>
<%@page import="com.marklabs.perceptualObj.SemanticScale" %>
<%@page import="com.marklabs.perceptualObj.MDSDimension" %>

<% 
  int currentPeriod = ((Integer) request.getSession().getAttribute(Constants.CURRENT_PERIOD)).intValue();
  int previousPeriod = currentPeriod - 1;
  
  BrandAdvertisement previousPeriodBrandAdv = (BrandAdvertisement) request.getSession().getAttribute(Constants.PREVIOUSPERIOD_BRANDADV);
  BrandAdvertisement thisPeriodBrandAdv = (BrandAdvertisement) request.getSession().getAttribute(Constants.THISPERIOD_BRANDADV);

  boolean doesBrandsExist = false;
  List<Brand> existingBrands = (List<Brand>) request.getAttribute("existingBrands");  

  if (existingBrands != null && existingBrands.size() > 0) {
    doesBrandsExist = true;
  }
  Brand selectedBrand = (Brand) request.getSession().getAttribute(Constants.SELECTED_BRAND_ADV);
  
 
%>
<style>
	#raffles, #wannabes, #deprived, #strugglers {
		float: left;
		clear: left;
		width: 200px;
	}
	#raffles .ui-slider-range { background: #729fcf; }
	#raffles .ui-slider-handle { border-color: #729fcf; }
	#wannabes .ui-slider-range { background: #729fcf; }
	#wannabes .ui-slider-handle { border-color: #729fcf; }
	#deprived .ui-slider-range { background: #729fcf; }
	#deprived .ui-slider-handle { border-color: #729fcf; }
	#strugglers .ui-slider-range { background: #729fcf; }
	#strugglers .ui-slider-handle { border-color: #729fcf; }

</style>
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

$("#brandAdvHomeForm").validate({
		rules: {
			advMediaBudget: {
				required: true,
				number: true
			},
			raffles_targetSeg: {
				required: true,
				number: true,
				range: [0,100]
			},
			wannabes_targetSeg: {
				required: true,
				number: true,
				range: [0,100]
			},
			deprived_targetSeg: {
				required: true,
				number: true,
				range: [0,100]
			},
			strugglers_targetSeg: {
				required: true,
				number: true,
				range: [0,100]
			},
			targetSegTotal: {
				required: true,
				number: true,
				equal: 100
			}
		},
		messages: {
			targetSegTotal: "Target Segment total should add up to 100%",
		}	
	});

});

</script>
<script>
	$(function() {
		$( "#raffles").slider({
			range: "min",
			value: <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegRaffles():"")%>,
			min: 0,
			max: 100,
			slide: function( event, ui ) {
				var p = $( "#amount5" ).val();
				var q = $( "#amount4" ).val();
				var r = $( "#amount3" ).val();
				var sum3 = parseFloat(p) + parseFloat(q) + parseFloat(r) + ui.value;
				$( "#amount2" ).val( "" + ui.value );
				$( "#targetSegTotal" ).val( sum3 );
			}
		});
		$( "#amount2" ).val( "" + $( "#raffles" ).slider( "value" ) );
	});
	$(function() {
		$( "#wannabes").slider({
			range: "min",
			value: <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegWannabees():"")%>,
			min: 0,
			max: 100,
			slide: function( event, ui ) {
				var p = $( "#amount5" ).val();
				var q = $( "#amount4" ).val();
				var r = $( "#amount2" ).val();
				var sum3 = parseFloat(p) + parseFloat(q) + parseFloat(r) + ui.value;
				$( "#amount3" ).val( "" + ui.value );
				$( "#targetSegTotal" ).val( sum3 );
			}
		});
		$( "#amount3" ).val( "" + $( "#wannabes" ).slider( "value" ) );
	});
	$(function() {
		$( "#deprived").slider({
			range: "min",
			value: <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegDeprived():"")%>,
			min: 0,
			max: 100,
			slide: function( event, ui ) {
				var p = $( "#amount5" ).val();
				var q = $( "#amount3" ).val();
				var r = $( "#amount2" ).val();
				var sum3 = parseFloat(p) + parseFloat(q) + parseFloat(r) + ui.value;
				$( "#amount4" ).val( "" + ui.value );
				$( "#targetSegTotal" ).val( sum3 );
			}
		});
		$( "#amount4" ).val( "" + $( "#deprived" ).slider( "value" ) );
	});
	$(function() {
		$( "#strugglers").slider({
			range: "min",
			value: <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegStrugglers():"")%>,
			min: 0,
			max: 100,
			slide: function( event, ui ) {
				var p = $( "#amount4" ).val();
				var q = $( "#amount3" ).val();
				var r = $( "#amount2" ).val();
				var sum3 = parseFloat(p) + parseFloat(q) + parseFloat(r) + ui.value;
				$( "#amount5" ).val( "" + ui.value );
				$( "#targetSegTotal" ).val( sum3 );
			}
		});
		$( "#amount5" ).val( "" + $( "#strugglers" ).slider( "value" ) );
	});
	

function SetSliderValue(sliderId, textBoxControl) {
		var amount = textBoxControl.value;
		var minimum = $(sliderId).slider("min")
		var maximum = $(sliderId).slider("max")
		
		if (amount > minimum || amount < maximum){
			$(sliderId).slider('option', 'value', amount);
		}		
	}

</script>
<script type="text/javascript">
  $(document).ready(function(){
  	
  	$("input.cancel").click(function(){
      window.location = "<%=CONTEXTPATH%>/marketingTeam.htm";
  	});

	var b = <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegRaffles():"")%>;
	var c = <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegWannabees():"")%>;
	var d = <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegDeprived():"")%>;
	var e = <%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getSegStrugglers():"")%>;
      var totval = b + c + d + e;
	$("input.targetSegTotal").val(totval);


    $("#brandAdvHomeForm").submit(function() {
    	return true;
    });
    
    $("input.tarSegFld").live("change", function(){ 
      var sum = 0;
      var inp = $("input.tarSegFld");
      
      for ( i = 0; i < inp.length; i++)
        sum = sum + parseInt($(inp[i]).val());
      $("input.targetSegTotal").val(sum);
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
			<div class="block-border"><form class="block-content form" id="brandAdvHomeForm" name="brandAdvHomeForm" method="post" action="brandAdvertisement.htm?do=saveThisPeriodBrandAdv">
				<h1>Brand Advertising</h1>
				
				<div class="columns">
					<div>	
							
							<ul class="tabs js-tabs same-height">
<% 
		if (doesBrandsExist) {
			Iterator<Brand> itr = existingBrands.iterator();
			while (itr.hasNext()) {
				Brand thisBrand = (Brand)itr.next();
			%>	
				<li <% if (selectedBrand != null && 
						selectedBrand.getId() == thisBrand.getId()) { 
						%>
						class="current" <%}%>> 	
						<a href="brandAdvertisement.htm?selectedBrandId=<%=thisBrand.getId()%>"> 
					<span><%= thisBrand.getBrandName() %></span></a></li>					
			<%	
			}
		}
		%>
							</ul>
		
<div class="tabs-content">							
<div id="tab-product1">
<fieldset>
<legend>Brand Advertising</legend>					
					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Brand Advertising</span>
					</div>
					<div class="colx3-center">
						<span class="label">Period <%=previousPeriod %></span>	
					</div>
					<div class="colx3-right">
						<span class="label">Period <%=currentPeriod %></span>
					</div>
					</div>

					<div class="columns">
	        			<div class="colx3-left">
							<span class="label"></span>
							<strong>Advertising Media Budget</strong>
						</div>
						<div class="colx3-center">
							<span class="label"></span><p><span class="relative">	
							<input type="text" name="ppAdvMBudget" id="ppAdvMBudget" disabled 
								value = "<%= ((previousPeriodBrandAdv != null)?previousPeriodBrandAdv.getAdvMediabudget():"")%>" 
								class="past"><span class="check-past"></span></span></p></div>
						<div class="colx3-right">
							<span class="label"></span>
							<input type="text" name="advMediaBudget" id="tpAdvMBudget" 
								value = "<%= ((thisPeriodBrandAdv != null)?thisPeriodBrandAdv.getAdvMediabudget():"")%>" />				
						</div>
					</div>
					
</fieldset>

<fieldset>
<legend>Targeted Segments (%)</legend>					

					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Raffles</span>
					</div>
					<div class="colx3-center">
						<span class="label"></span><div id="raffles"></div>	
					</div>
					<div class="colx3-right">
						<span class="label"></span><input type="text" id="amount2" name="raffles_targetSeg" class="tarSegFld rafflesSegTotal" onKeyUp="SetSliderValue('#raffles', this)">
					</div>
					</div>

					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Wannabes</span>
					</div>
					<div class="colx3-center">
						<span class="label"></span><div id="wannabes"></div>	
					</div>
					<div class="colx3-right">
						<span class="label"></span><input type="text" id="amount3" name="wannabes_targetSeg" class="tarSegFld wannabesSegTotal" onKeyUp="SetSliderValue('#wannabes', this)">
					</div>
					</div>

					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Strugglers</span>
					</div>
					<div class="colx3-center">
						<span class="label"></span><div id="strugglers"></div>	
					</div>
					<div class="colx3-right">
						<span class="label"></span><input type="text" id="amount5" name="strugglers_targetSeg" class="tarSegFld strSegTotal" onKeyUp="SetSliderValue('#strugglers', this)">
					</div>
					</div>

					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Deprived</span>
					</div>
					<div class="colx3-center">
						<span class="label"></span><div id="deprived"></div>	
					</div>
					<div class="colx3-right">
						<span class="label"></span><input type="text" id="amount4" name="deprived_targetSeg" class="tarSegFld depSegTotal" onKeyUp="SetSliderValue('#deprived', this)">
					</div>
					</div>

					<div class="columns">
        				<div class="colx3-left">
					<span class="label">Total</span>
					</div>
					<div class="colx3-center">
						<span class="label"></span>	
					</div>
					<div class="colx3-right">
						<span class="label"></span><input type="text" id="targetSegTotal" class="targetSegTotal" name="targetSegTotal" readonly>
					</div>
					</div>
					</fieldset>

					<div class="columns">
						<button type="submit" class="button save">Save</button>
						<button type="submit" class="button cancel">Cancel</button>
					</div>
	</form>
</div>

<%@ include file="footer.jsp" %>
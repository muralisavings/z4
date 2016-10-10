<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html class="no-js" lang="en">
<head>
<!-- title and meta -->
<meta charset="utf-8">
<meta content="width=device-width,initial-scale=1.0" name="viewport">

<title>Instant TopUp</title>

<!-- css --->
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/jquery-3.1.0.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/jquery.dynatable.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.min.js"></script>

<spring:url value="/resources/js/lib/jquery-3.1.0.js" var="jqueryJs" />
<spring:url value="/resources/css/base.css" var="basecss" />
<spring:url value="/resources/css/style.css" var="stylecss" />
<spring:url value="/resources/css/tabbed-panels.css" var="tabcss" />
<spring:url value="/resources/css/jquery-dataTables-min.css"
	var="tablecss" />

<spring:url value="/resources/icons/mobile_r.jpg" var="mobile_r" />
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Bitter:400,700'
	rel='stylesheet' type='text/css'>
<link href="${basecss}" rel="stylesheet">
<link href="${stylecss}" rel="stylesheet">
<link href="${tabcss}" rel="stylesheet">
<link href="${tablecss}" rel="stylesheet">
<link href="${mobile_r}" rel="stylesheet">


<!-- js -->
<!--[if lt IE 9]><script src="js/html5shiv.js"></script><![endif]-->
</head>

<body>

	<div id="wrapper">

		<div class="info-bar">
			<div class="container"></div>
		</div>
		<!-- /.info-bar -->

		<header>

			<div class="branding">
				<div class="container clearfix">
					<div class="logo"></div>

				</div>
			</div>
			<!-- /.branding -->

			<div class="site-title">
				<div class="container">
					<h1>Welcome Guest!!!</h1>
				</div>
			</div>
			<!-- /.site-title -->

		</header>

		<div id="topbuttonsDiv">
			<section id="mobileSection">
				<img src="/resources/icons/mobile.png"> <img alt="Image"
					src="/resources/icons/mobile.png" />

			</section>
		</div>

		<div id="mainDiv">
			<div id="leftadsDiv"></div>
			<div id="prepaidmobileinputdiv">
				<h2>Prepaid</h2>
				<ol class="input-list style-4 clearfix">
					<li><input type="text" placeholder="MobileNumber"
						id="mobilenumber"> <span id="spnPhoneStatus"></span></li>
					<li><input type="text" placeholder="Service Provider"
						id="serviceProvider" readonly></li>
					<li><input type="text" placeholder="Service Circle"
						id="serviceCircle" readonly></li>
					<li><input type="text" placeholder="Amount" id="amount">
					<li>
					<div class="buttonHolder">
 							 <a id = "rechargeButton" href="#" class="button tick"></a>
					</div>
					</li>
					
				</ol>
			</div>
			<div class="tabbed" id="prepaidmobileplansdiv">
				<h2>Operator -> Circle plans</h2>
				<input name="tabbed" id="tabbed1" type="radio">
				<section>
					<h1>
						<label for="tabbed1">Top Up</label>
					</h1>
					<div>
						<table id="offerTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed2" type="radio" checked="checked">
				<section>
					<h1>
						<label for="tabbed2">Full Talktime</label>
					</h1>
					<div><table id="ftOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed3" type="radio">
				<section>
					<h1>
						<label for="tabbed3">2G</label>
					</h1>
					<div><table id="2gOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed4" type="radio">
				<section>
					<h1>
						<label for="tabbed4">3G/4G</label>
					</h1>
					<div><table id="3gOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed5" type="radio">
				<section>
					<h1>
						<label for="tabbed5">SMS</label>
					</h1>
					<div><table id="smsOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed6" type="radio">
				<section>
					<h1>
						<label for="tabbed6">Local/STD/ISD</label>
					</h1>
					<div><table id="localStdIsdOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				<input name="tabbed" id="tabbed7" type="radio">
				<section>
					<h1>
						<label for="tabbed7">Roaming</label>
					</h1>
					<div><table id="roamingOfferTable" class="display" width="100%">
							<thead>
								<tr>
									<th id="Amount">Amount</th>
									<th id="Validity">Validity</th>
									<th id="Detail">Detail</th>
								</tr>
							</thead>
							<tbody>
							</tbody>
						</table>
					</div>
				</section>
				
			</div>

			<div id="rightadsDiv">
				<h2>right adds</h2>
			</div>

		</div>
		<!-- #main -->

		<footer>
			<div class="container">
				<div class="clearfix">
					<aside>
						<ul>
							<li><a href="">Mobile</a></li>
							<li><a href="">SomeLink1</a></li>
							<li><a href="">SomeLink2</a></li>
						</ul>
					</aside>

					<aside>
						<ul>
							<li><a href="">SomeLink1</a></li>
							<li><a href="">About</a></li>
							<li><a href="">Contact</a></li>
						</ul>
					</aside>
					<aside class="logo">
						<a href=""></a>
					</aside>
				</div>
				<div class="copyright">
					<span>&copy; 2016, Yunni Network<br> <a href="">xxxyyyzzz.com</a></span>
				</div>
			</div>
		</footer>
		<!-- /footer -->

	</div>
	<!-- /#wrapper -->

	<script type="text/javascript">
var currentMobileNumber;
var currentServiceProvider;
var currentCircleName;
var isFirstTimeInValid = true;

$(document).ready(function() {

	$('#offerTable tbody').on( 'click', 'tr', function () {
		if ( $(this).hasClass('selected') ) {
			$(this).removeClass('selected');
		} else {
			$("#offerTable tbody tr").removeClass('selected');
			$(this).addClass('selected');
		}
	});
	

	$('#ftOfferTable tbody').on( 'click', 'tr', function () {
		if ( $(this).hasClass('selected') ) {
			$(this).removeClass('selected');
		} else {
			$("#ftOfferTable tbody tr").removeClass('selected');
			$(this).addClass('selected');
		}
	});
	
	
	$('#rechargeButton').click( function () {
		$.ajax({
			 url: 'ajaxservice/recharge?mobileNumber='+$("#mobilenumber").val()+'&amount='+$("#amount").val(),
	   	 type:'get',
	   	 dataType: 'json', 
	   	 success: function(data1){
					alert(data1);
			       },
				   error: function(e){
						  alert("Error11");
				  }
			});
	});
	
	applyAmountSelectEvents('#offerTable');
	applyAmountSelectEvents('#ftOfferTable');
	applyAmountSelectEvents('#2gOfferTable');
	applyAmountSelectEvents('#3gOfferTable');
	applyAmountSelectEvents('#smsOfferTable');
	applyAmountSelectEvents('#localStdIsdOfferTable');
	applyAmountSelectEvents('#roamingOfferTable');
	
	} );

	


$("#amount").keyup(function(){
	$("#offerTable tbody tr").removeClass('selected');
var amount = $("#amount").val();
$('#offerTable').DataTable().rows().every( function ( rowIdx, tableLoop, rowLoop ) {
    var data = this.data();
    if(data.Amount == amount){
    	var $row = $("#offerTable tr").eq(rowIdx+1);
    	$row.trigger('click');

    	
    	$(".dataTables_scrollBody").scrollTop(42*rowIdx+1);
    	
    	
    } 
} );
});



$("#mobilenumber").keyup(function(){
        if (validatePhone('mobilenumber') && $("#mobilenumber").val().length == 10) {
        	isFirstTimeInValid = true;
            $('#mobilenumber').css('color', 'green');
            if(currentMobileNumber == $("#mobilenumber").val()){
            	$("#serviceProvider").val(currentServiceProvider);
            	$("#serviceCircle").val(currentCircleName);
           	    $('#offerTable').fadeIn("slow");
            }
            else if(currentMobileNumber != $("#mobilenumber").val()){
            	callAjaxService();
            	currentMobileNumber = $("#mobilenumber").val();
            	$('#offerTable').fadeIn("slow");
            }
        }
        else {
        	if(isFirstTimeInValid ==true){
            $('#mobilenumber').css('color', 'red');
            $("#serviceProvider").val("");
            $("#serviceCircle").val("");
            $("#amount").val("");      
            $('#offerTable').fadeOut("slow");
            isFirstTimeInValid = false;
        	}
        }
});

function applyAmountSelectEvents(tableId){
	$(tableId).click( function () {
		//table.row('.selected').remove().draw( false );
		$("#amount").val($(tableId).DataTable().cell('.selected', 0).data());
		} );

}

function callAjaxService(){
	$.ajax({
		 url: 'ajaxservice/geMobileInfo?mobileNumber='+$("#mobilenumber").val(),
   	 type:'get',
   	 dataType: 'json', 
   	 success: function(data1){
				$("#serviceProvider").val(data1.operator_name);
				$("#serviceCircle").val(data1.circle_name);
            	currentServiceProvider = $("#serviceProvider").val();
            	currentCircleName = $("#serviceCircle").val();
				
				var serviceProvider = $("#serviceProvider").val();
				var circleName = $("#serviceCircle").val();
				
				loadDataTable(circleName, serviceProvider, "TUP", "#offerTable");
				loadDataTable(circleName, serviceProvider, "FTT", "#ftOfferTable");
				loadDataTable(circleName, serviceProvider, "2G", "#2gOfferTable");
				loadDataTable(circleName, serviceProvider, "3G", "#3gOfferTable");
				loadDataTable(circleName, serviceProvider, "SMS", "#smsOfferTable");
				loadDataTable(circleName, serviceProvider, "LSC", "#localStdIsdOfferTable");
				loadDataTable(circleName, serviceProvider, "RMG", "#roamingOfferTable");
		       },
			   error: function(e){
					  alert("Error11");
			  }
		});
}

function loadDataTable(circleName, serviceProvider, offerType, tableId){
	$(tableId).dataTable().fnDestroy();
	$(tableId).dataTable( {
		"sAjaxSource": "ajaxservice/getOfferInfo?operatorName="+serviceProvider+'&circleName='+circleName+'&offerType='+offerType,
		"sAjaxDataProp": "",
		"bProcessing" : true,
		"scrollX": 200,
		"scrollY": 200,
		"bFilter": false,
		"bPaginate": false,
		"iDisplayLength" : 6,
		"bInfo": false,
		"bSort": false,
		select: {
            style: 'single'
        },
	   "aoColumns": [
	    		    {"mData": "Amount" },
		    		{ "mData": "Validity" },
	     	        { "mData": "Detail" }
				  	],
		"autoWidth": false,
		columnDefs: [
		            { width: '35px', targets: 0 }, 
		            { width: '100px', targets: 1 }, 
		            { width: '300px', targets: 2 }  
		           ]
});
}

function validatePhone(txtPhone) {
    var a = document.getElementById(txtPhone).value;
    var filter = /^[0-9-+]+$/;
    if (filter.test(a)) {
        return true;
    }
    else {
        return false;
    }
}
</script>

</body>
</html>
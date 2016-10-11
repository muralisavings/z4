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
	src="${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.min.js"></script>
<script type="text/javascript"
	src="${pageContext.servletContext.contextPath}/resources/js/jquery-ui.js"></script>

<spring:url value="/resources/css/base.css" var="basecss" />
<spring:url value="/resources/css/style.css" var="stylecss" />
<spring:url value="/resources/css/tabbed-panels.css" var="tabcss" />
<spring:url value="/resources/css/jquery-dataTables-min.css"
	var="tablecss"/>
<spring:url value="/resources/css/jquery-ui.css"
	var="jqueryUicss"/>

	

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
<link href="${jqueryUicss}" rel="stylesheet">


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
				<h2 id = "inputPanelHeader">Prepaid</h2>
				<ol class="input-list style-4 clearfix">
					<li><input type="text" placeholder="MobileNumber"
						id="mobilenumber" required> <span id="spnPhoneStatus"></span></li>
					<li><input type="text" placeholder="Service Provider"
						id="serviceProvider" required></li>
					<li><input type="text" placeholder="Service Circle"
						id="serviceCircle" required></li>
					<li><input type="text" placeholder="Amount" id="amount" required>
					<li>
						<div class="buttonHolder">
							<a id="rechargeButton" href="" class="button tick"></a>
						</div>
					</li>

				</ol>
			</div>
			<div class="tabbed" id="prepaidmobileplansdiv">
				<h2 id = "offerPlanelHeader">Operator -> Circle plans</h2>
				<input name="tabbed" id="tabbed1" type="radio"   checked="checked">
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
				<input name="tabbed" id="tabbed2" type="radio">
				<section>
					<h1>
						<label for="tabbed2">Full Talktime</label>
					</h1>
					<div>
						<table id="ftOfferTable" class="display" width="100%">
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
					<div>
						<table id="2gOfferTable" class="display" width="100%">
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
					<div>
						<table id="3gOfferTable" class="display" width="100%">
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
					<div>
						<table id="smsOfferTable" class="display" width="100%">
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
					<div>
						<table id="localStdIsdOfferTable" class="display" width="100%">
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
					<div>
						<table id="roamingOfferTable" class="display" width="100%">
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
	
	$(function() {
		var availableServiceProviders = ["AIRTEL",
		    		                     "AIRCEL",
		    		                     "BSNL",
		    		                     "VODAFONE",
		    		                     "TATA DOCOMO GSM",
		    		                     "TATA DOCOMO CDMA",
		    		                     "MTS",
		    		                     "UNINOR",
		    		                     "LOOP",
		    		                     "VIDEOCON",
		    		                     "MTNL MUMBAI",
		    		                     "MTNL DELHI",
		    		                     "IDEA"];
		
		var availableCicles = ["Andhra Pradesh", 
		                       "Assam", 
		                       "Bihar & Jharkhand",
								"Chennai",
								"Delhi/NCR",
								"Gujarat",
								"Haryana",
								"Himachal Pradesh",
								"Jammu & Kashmir",
								"Karnataka",
								"Kerala",
								"Kolkata",
								"Mumbai",
								"North East",
								"Orissa",
								"Punjab",
								"Rajasthan",
								"Tamil Nadu",
								"Uttar Pradesh (E)",
								"Uttar Pradesh (W)",
								"West Bengal",
								"Maharashtra",
								"Madhya Pradesh"];
		
		$('#serviceProvider').autocomplete({
		      source: availableServiceProviders
		    });
		$('#serviceCircle').autocomplete({
		      source: availableCicles
		    });
		});
	
		var currentMobileNumber;
		var currentServiceProvider;
		var currentCircleName;
		var currentAmount;
		var isFirstTimeInValid = true;
		var isMobile = false;
	
		$(document)
				.ready(
						function() {
							$("#prepaidmobileplansdiv").tabs();
							
							
							document.getElementById("inputPanelHeader").innerHTML = "Mobile Prepaid";

							// device detection
							if (/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i
									.test(navigator.userAgent)
									|| /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i
											.test(navigator.userAgent.substr(0,
													4))) {
								isMobile = true;
							}
							
							//alert(isMobile);
							applyAmountSelectionEventForTable('#offerTable');
							applyAmountSelectionEventForTable('#ftOfferTable');
							applyAmountSelectionEventForTable('#2gOfferTable');
							applyAmountSelectionEventForTable('#3gOfferTable');
							applyAmountSelectionEventForTable('#smsOfferTable');
							applyAmountSelectionEventForTable('#localStdIsdOfferTable');
							applyAmountSelectionEventForTable('#roamingOfferTable');

							applyAmountSelectEventsForAmount('#offerTable');
							applyAmountSelectEventsForAmount('#ftOfferTable');
							applyAmountSelectEventsForAmount('#2gOfferTable');
							applyAmountSelectEventsForAmount('#3gOfferTable');
							applyAmountSelectEventsForAmount('#smsOfferTable');
							applyAmountSelectEventsForAmount('#localStdIsdOfferTable');
							//applyAmountSelectEventsForAmount('#roamingOfferTable');

							$('#rechargeButton')
									.click(
											function() {
												$.ajax({
															url : 'ajaxservice/recharge?mobileNumber='+$("#mobilenumber").val()
																	+ '&amount='+$("#amount").val(),
																	type : 'get',
																	dataType : 'json',
																	success : function(
																			data1) {
																			alert(data1);
																	},
															error : function(e) {
																alert("Error11");
															}
														});
											});
						});

	   function applyAmountSelectEventsForAmount(tableId) {
	      $(tableId).click(
						function() {
								$("#amount").val(
								$(tableId).DataTable().cell('.selected', 0)
										.data());
								currentAmount = $(tableId).DataTable().cell('.selected', 0)
								.data();
						});
		}

		function applyAmountSelectionEventForTable(tableId) {
			$(tableId + ' tbody').on('click', 'tr', function() {
				if ($(this).hasClass('selected')) {
					$(this).removeClass('selected');
				} else {
					clearAllTableSelection();
					$(this).addClass('selected');
				}
			});
		}
		
		function clearAllTableSelection(){
			$("#offerTable tbody tr").removeClass('selected');
			$("#ftOfferTable tbody tr").removeClass('selected');
			$("#2gOfferTable tbody tr").removeClass('selected');
			$("#3gOfferTable tbody tr").removeClass('selected');
			$("#smsOfferTable tbody tr").removeClass('selected');
			$("#localStdIsdOfferTable tbody tr").removeClass('selected');
			$("#roamingOfferTable tbody tr").removeClass('selected');
		}


		$("#amount").keyup(
				function() {
					currentAmount = $("#amount").val();
					navigateTableSelectionOnAmountEntry('#offerTable');
					/*navigateTableSelectionOnAmountEntry('#ftOfferTable');
					navigateTableSelectionOnAmountEntry('#2gOfferTable');
					navigateTableSelectionOnAmountEntry('#3gOfferTable');
					navigateTableSelectionOnAmountEntry('#smsOfferTable');
					navigateTableSelectionOnAmountEntry('#localStdIsdOfferTable');
					navigateTableSelectionOnAmountEntry('#roamingOfferTable');*/
				});
		
		function navigateTableSelectionOnAmountEntry(tableId){
			var amount = $("#amount").val();
			$(tableId+" tbody tr").removeClass('selected');
			//clearAllTableSelection();
			//$("#prepaidmobileplansdiv").tabs("option", "active", 1);
			$(tableId).DataTable().rows().every(
					function(rowIdx, tableLoop, rowLoop) {
						var data = this.data();
						if (data.Amount == amount) {
							var $row = $(tableId+" tr").eq(
									rowIdx + 1);
							$row.trigger('click');
							$(".dataTables_scrollBody").scrollTop(
									42 * rowIdx + 1);
						}
					});
		}
		

		$("#mobilenumber").keyup(
				function() {
					if (validatePhone('mobilenumber')
							&& $("#mobilenumber").val().length == 10) {
						isFirstTimeInValid = true;
						$('#mobilenumber').css('color', 'black');
						if (currentMobileNumber == $("#mobilenumber").val()) {
							$("#serviceProvider").val(currentServiceProvider);
							$("#serviceCircle").val(currentCircleName);
							$("#amount").val(currentAmount);
							//$('#offerTable').fadeIn("slow");
							document.getElementById("offerPlanelHeader").innerHTML = currentServiceProvider+" -> "+currentCircleName;
						} else if (currentMobileNumber != $("#mobilenumber").val()) {
							callAjaxService();
							currentMobileNumber = $("#mobilenumber").val();
							//$('#offerTable').fadeIn("slow");
						}
					} else {
						if (isFirstTimeInValid == true) {
							$('#mobilenumber').css('color', 'red');
							$("#serviceProvider").val("");
							$("#serviceCircle").val("");
							$("#amount").val("");
							//$('#offerTable').fadeOut("slow");
							isFirstTimeInValid = false;
						}
					}
				});

		function callAjaxService() {
			$.ajax({
				url : 'ajaxservice/geMobileInfo?mobileNumber='
						+ $("#mobilenumber").val(),
				type : 'get',
				dataType : 'json',
				success : function(data1) {
					$("#serviceProvider").val(data1.operator_name);
					$("#serviceCircle").val(data1.circle_name);
					document.getElementById("offerPlanelHeader").innerHTML = data1.operator_name+" -> "+data1.circle_name;
					currentServiceProvider = $("#serviceProvider").val();
					currentCircleName = $("#serviceCircle").val();

					var serviceProvider = $("#serviceProvider").val();
					var circleName = $("#serviceCircle").val();

					loadDataTable(circleName, serviceProvider, "TUP",
							"#offerTable");
					loadDataTable(circleName, serviceProvider, "FTT",
							"#ftOfferTable");
					loadDataTable(circleName, serviceProvider, "2G",
							"#2gOfferTable");
					loadDataTable(circleName, serviceProvider, "3G",
							"#3gOfferTable");
					loadDataTable(circleName, serviceProvider, "SMS",
							"#smsOfferTable");
					loadDataTable(circleName, serviceProvider, "LSC",
							"#localStdIsdOfferTable");
					loadDataTable(circleName, serviceProvider, "RMG",
							"#roamingOfferTable");
				},
				error : function(e) {
					alert("Error11");
				}
			});
		}

		function loadDataTable(circleName, serviceProvider, offerType, tableId) {
			$(tableId).dataTable().fnDestroy();
			$(tableId).dataTable(
							{
								"sAjaxSource" : "ajaxservice/getOfferInfo?operatorName="
										+ serviceProvider
										+ '&circleName='
										+ circleName
										+ '&offerType='
										+ offerType,
								"sAjaxDataProp" : "",
								"bProcessing" : true,
								"scrollX" : 200,
								"scrollY" : 200,
								"bFilter" : false,
								"bPaginate" : false,
								"iDisplayLength" : 6,
								"bInfo" : false,
								"bSort" : false,
								select : {
									style : 'single'
								},
								"aoColumns" : [ {
									"mData" : "Amount"
								}, {
									"mData" : "Validity"
								}, {
									"mData" : "Detail"
								} ],
								"autoWidth" : true,
								columnDefs : [ {
									width : '35px',
									targets : 0
								}, {
									width : '100px',
									targets : 1
								}, {
									width : '300px',
									targets : 2
								} ]
							});
			//$(tableId).dataTable().fnAdjustColumnSizing( false );
			
			//$table.closest(".dataTables_wrapper").find("*").css("box-sizing","content-box").css("-moz-box-sizing","content-box");
		}

		function validatePhone(txtPhone) {
			var a = document.getElementById(txtPhone).value;
			var filter = /^[0-9-+]+$/;
			if (filter.test(a)) {
				return true;
			} else {
				return false;
			}
		}
	</script>
</body>
</html>
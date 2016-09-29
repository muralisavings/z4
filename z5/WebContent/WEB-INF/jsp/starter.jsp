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
  <script type="text/javascript" src = "${pageContext.servletContext.contextPath}/resources/js/jquery-3.1.0.js"></script>
  <script type="text/javascript" src = "${pageContext.servletContext.contextPath}/resources/js/jquery.dynatable.js"></script>
  <script type="text/javascript" src = "${pageContext.servletContext.contextPath}/resources/js/jquery.dataTables.min.js"></script>
  
  <spring:url value="/resources/js/lib/jquery-3.1.0.js" var="jqueryJs" />
  <spring:url value="/resources/css/base.css" var="basecss" />
  <spring:url value="/resources/css/style.css" var="stylecss" />
  <spring:url value="/resources/css/tabbed-panels.css" var="tabcss" />
  <spring:url value="/resources/css/jquery.dataTables.min.css" var="tablecss" />
  <spring:url value="/resources/css/jquery.dynatable.css" var = "dynatablecss"/>

  
  <spring:url value="/resources/icons/mobile_r.jpg" var="mobile_r" />
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,700italic,400,600,700' rel='stylesheet' type='text/css'>
  <link href='http://fonts.googleapis.com/css?family=Bitter:400,700' rel='stylesheet' type='text/css'>
  <link href="${basecss}" rel="stylesheet">
  <link href="${stylecss}" rel="stylesheet">
  <link href="${tabcss}" rel="stylesheet">
  <link href="${tablecss}" rel="stylesheet">
  <link href="${mobile_r}" rel="stylesheet">
    <link href="${dynatablecss}" rel="stylesheet">
  
 
  <!-- js -->
  <!--[if lt IE 9]><script src="js/html5shiv.js"></script><![endif]-->
</head>

<body>

<div id="wrapper">
  
  <div class="info-bar">
    <div class="container">
      
    </div>
  </div><!-- /.info-bar -->

  <header>

    <div class="branding">
      <div class="container clearfix">
        <div class="logo">
          
        </div>
        
      </div>
    </div><!-- /.branding -->

    <div class="site-title">
      <div class="container">
        <h1>Welcome Guest!!!</h1>
      </div>
    </div><!-- /.site-title -->

  </header>

 <div id="topbuttonsDiv">
    <section id = "mobileSection">
    <img src= "/resources/icons/mobile.png">
    <img alt ="Image" src = "/resources/icons/mobile.png"/>
    
    </section>
  </div>

  <div id="mainDiv" >
   <div id="leftadsDiv">
  	</div>
  	<div id = "prepaidmobileinputdiv">
        <h2>Prepaid</h2>
	    <ol class="input-list style-4 clearfix">
          <li>
            <input type="text" placeholder="MobileNumber" id="mobilenumber">
          </li>
          <li>
            <input type="text" placeholder="Service Provider" id = "serviceProvider">
          </li>
          <li>
            <input type="text" placeholder="Service Circle" id = "serviceCircle">
          </li>
          <li>
            <input type="text" placeholder="Amount" id = "amount">
          </li>
        </ol>
   	</div>
   	<div  class="tabbed" id = "prepaidmobileplansdiv">
   	 <h2>Operator -> Circle plans</h2>
      <input name="tabbed" id="tabbed1" type="radio" checked="checked">
      <section>
        <h1>
          <label for="tabbed1">Top Up</label>
        </h1>
        <div>
        <table id="offerTable" class="display" width="100%">
        	<thead>
        	<tr>
                <th id = "Detail">Detail</th>
                <th id = "Amount">Amount</th>
                <th id = "Validity">Validity</th>
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
          <label for="tabbed2">A 2</label>
        </h1>
        <div>
          Everyone is entitled to all the rights and freedoms set forth in this Declaration, without distinction of any kind, such as race, colour, sex, language, religion, political or other opinion, national or social origin, property, birth or other status. Furthermore, no distinction shall be made on the basis of the political, jurisdictional or international status of the country or territory to which a person belongs, whether it be independent, trust, non-self-governing or under any other limitation of sovereignty.
        </div>
      </section>
      <input name="tabbed" id="tabbed3" type="radio">
      <section>
        <h1>
          <label for="tabbed3">A 3</label>
        </h1>
        <div>
          Everyone has the right to life, liberty and security of person.
        </div>
      </section>
      <input name="tabbed" id="tabbed4" type="radio">
      <section>
        <h1>
          <label for="tabbed4">A 4</label>
        </h1>
        <div>
          No one shall be held in slavery or servitude; slavery and the slave trade shall be prohibited in all their forms.
        </div>
      </section>
      <input name="tabbed" id="tabbed5" type="radio">
      <section>
        <h1>
          <label for="tabbed5">A 5</label>
        </h1>
        <div>
          No one shall be subjected to torture or to cruel, inhuman or degrading treatment or punishment.
        </div>
      </section>
      <input name="tabbed" id="tabbed6" type="radio">
      <section>
        <h1>
          <label for="tabbed6">A 6</label>
        </h1>
        <div>
          Everyone has the right to recognition everywhere as a person before the law.
        </div>
      </section>
    </div>
      
    <div id = "rightadsDiv">
    	<h2>right adds</h2>
    </div>
    
  </div><!-- #main -->

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
        <span>&copy; 2016, Yunni Network<br>
        <a href="">xxxyyyzzz.com</a></span>
      </div>
    </div>
  </footer><!-- /footer -->
  
</div><!-- /#wrapper -->

<script type="text/javascript">
var tableVar;
$("#mobilenumber").focusout(function(){
			$.ajax({
			 url: 'ajaxservice/geMobileInfo?mobileNumber='+$("#mobilenumber").val(),
	    	 type:'get',
	    	 dataType: 'json', 
	    	 success: function(data1){
					$("#serviceProvider").val(data1.operator_name);
					$("#serviceCircle").val(data1.circle_name);
					
					/*var table;
					if ($.fn.dataTable.isDataTable('#offerTable')) {
					    table = $('#offerTable').DataTable();
					}
					else {
					    table = $('#offerTable').DataTable( {
					        paging: false
					    } );
					}*/	
					
					if ( $.fn.dataTable.isDataTable( '#offerTable' ) ) {
						tableVar.DataTable().ajax.reload()
					} else{
						tableVar =  $('#offerTable').dataTable( {
							"sAjaxSource": "ajaxservice/getOfferInfo?operatorName="+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
							"sAjaxDataProp": "",
							 
							  "aoColumns": [
							        { "mData": "Detail" },
							        {"mData": "Amount" },
							    { "mData": "Validity" }
							    ]
							} );
						
					}
					/*$('#offerTable').dataTable( {
						"columnDefs": [{
						    "defaultContent": "-",
						    "targets": "_all"
						  }],
						  "ajax": {
						    "url": "ajaxservice/getOfferInfo?operatorName="+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
						    aoColumnDefs: [
						                   {sDefaultContent: '',
											 aTargets: [ '_all' ]
										  }],
						    "dataSrc": function ( json ) {
						    	//var s= json.map(JSON.stringify);
						    	var s = JSON.stringify(json.records);
						    	return json.records;
						        //return json;
						      }
						  }
						} );
					
					/*$.getJSON("ajaxservice/getOfferInfo?operatorName="+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(), function(response) {
						  $('#offerTable').dataTable({
						    processing: true,
						    data: response.records,
						    columns: [
						      { data: "Detail"},
						      { data: "Amount"},
						      { data: "Validity"}
						    ]
						  });
						});
					
				    /*$('#offerTable').DataTable( {
				        "processing": true,
				        "serverSide": true,
				        "ajax": {
				            "url": "ajaxservice/getOfferInfo?operatorName="+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
				            "type": "GET"
				        },
				        "columns": [
				            { "records": "Detail" },
				            { "records": "Amount" },
				            { "records": "Validity" }
				        ]
				    } );
					
					/*var table = $('##offerTable').DataTable( {
						sAjaxSource: 'ajaxservice/getOfferInfo?operatorName='+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val()
					} );
					 
					table.on( 'xhr', function () {
					    var json = table.ajax.json();
					    alert( json.data.length +' row(s) were loaded' );
					} );*/
					/*$.ajax({
						  url: 'ajaxservice/getOfferInfo?operatorName='+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
				    	  type:'get',
				    	  dataType: 'json', 
					      success: function(data){
					    	           var dynatable = $('#offerTable').dynatable({
					    	        	   table: {
					    	        	       defaultColumnIdStyle: 'lowercase'
					    	        	   },
							   						dataset: {
								        				    records: JSON.parse(JSON.stringify(data))
								      						}
							 	  	 }).data('dynatable');
								   // dynatable.settings.dataset.originalRecords = data;
								  //  dynatable.process();
								    
								  }
					});
					
					/*$('#offerTable').dynatable({
						  dataset: {
						    ajax: true,
						    ajaxUrl: 'ajaxservice/getOfferInfo?operatorName='+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
						    ajaxOnLoad: true,
						    records: []
						  }
						});
						
					/*$.ajax({
						 url: 'ajaxservice/getOfferInfo?operatorName='+$("#serviceProvider").val()+'&circleName='+$("#serviceCircle").val(),
				    	 type:'get',
				    	 dataType: 'text', 
				    	 success: function(data){
				    		   $('#offerTable').empty()
								var response = $.parseJSON(data);

								$(function() {
								    $.each(response, function(i, item) {
								        var $tr = $('<tr>').append(
								            $('<td>').text(item.Detail),
								            $('<td>').text(item.Amount),
								            $('<td>').text(item.Validity)
								        ).appendTo('#offerTable');
								    });
								});
							  },
								  error: function(e){
									  alert("Error11");
								  }
						});*/
				  },
					  error: function(e){
						  alert("Error11");
					  }
			});

	
    
});
</script>

</body>
</html>
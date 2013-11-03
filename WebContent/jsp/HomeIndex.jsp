<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>

<s:set name="role" value="role"/>
<s:set name="page" value="page"/>
<s:set name="menu" value="menu"/>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

<style type="text/css">  <%@include file="/assets/css/normalize.css" %>  </style>
<style type="text/css">  <%@include file="/assets/css/main.css" %>  </style>
<style type="text/css">  <%@include file="/assets/css/demo.css" %>  </style>
<style type="text/css">  <%@include file="/assets/css/jquery-te-1.4.0.css" %>  </style>

        <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
		<script src="assets/js/jquery-1.9.1.min.js"></script>
		<script src="assets/js/dropdown.js"></script>
		<script src="assets/js/jquery-te-1.4.0.min.js"></script>
		
	
    </head>
	<body class="<s:property value="%{#role}"/> <s:property value="%{#page}"/> <s:property value="%{#menu}"/>">

       <header class="header">
	   	<div class="header_top">
			<div class="wrapper header_content_area">
				<img class="logo" alt="Logo" src="assets/img/university_logo.png"/>
				<h1>Faculty of Information Technology - University of Moratuwa</h1>
				
				<nav class="header_nav">
					<a class="account" ><img class="wheel"src="assets/img/wheel.png" alt="setting Wheel"></a>
					<div class="submenu">
						<ul>
						  <li>
							<div class="icon_view_pro"></div>
							Veiw Profile</li>
						  <li>
							<div class="icon_log_out"></div>
							<a href="<s:url action="LogOut"/>">Log out</a></li>
						</ul>
					  </div><!-- End submenu-->
	
			  

					<label>Hello <s:if test="%{#session.userFullName!=null}">
	<s:property value="#session.userFullName"/>
</s:if>
<s:else>
<s:property value="#session.userName"/>
</s:else></label>
				</nav>
				
			</div><!-- /End Wrapper -->		
		</div><!-- /End Header Top-->
		
		<div class="header_bottom">
			<div class="wrapper header_content_area">
		
				<%@include file="/functions/main_menu_functions.jsp"%>

			</div><!-- /End Wrapper -->	
		</div><!-- /End Header Bottom-->
		
		</header><!-- /End Header -->
		
		<div class="clear"></div>
		
		<div class="wrapper equalheights">
			<div class="container equalheights">
				<div class="main_container equalheights">
					<%@include file="/functions/functions.jsp"%>					
					
					
				</div><!-- /End main container -->
				
				<div class="sub_container">
				<%@include file="/functions/sidebar_function.jsp"%>
				<div class="widget_2 widgets"><h2>May I help you ?</h2>
				<p>Go to SUPPORT menu and just send us a message if you have any issue.</p></div>
				<div class="widget_3 widgets">
				<h2>Related links</h2>
				<a href="http://www.itfac.mrt.ac.lk/about/">Faculty of Information Technology</a><br><hr>
				<a href="http://www.mrt.ac.lk/web/">University of Moratuwa</a>
				</div>
				</div><!-- /End sub container -->
		
			</div><!-- /End container -->	
		</div>	<!-- /End Wrapper -->	
	   
	   

<script type="text/javascript"  src="assets/js/plugins.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
<script type="text/javascript" src="assets/js/jquery.validate.js"></script>
<script type="text/javascript" src="assets/js/Regpage_validate.js"></script>
<script src="assets/js/equalheight.js"></script>
			<script>
			$(document).ready(function() {
				$(".equalheights").equalHeights();
			});
			</script>
			
<script type="text/javascript">

var form = $('#form1');
form.submit(function () {

$.ajax({
type: form.attr('method'),
url: "NewUserNameCheck",
data: {n1:$('#n1').val(),n2:$('#n2').val()},
success: function (data) {
var result=data;

if(result == 1){
	
	$('#result').attr("value","yes");
	
}
else{
	
	$('#result').attr("value","no");
}

}
});

return false;
});
</script>

    </body>
</html>

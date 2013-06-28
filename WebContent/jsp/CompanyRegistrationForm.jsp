<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="../assets/css/normalize.min.css">
        <link rel="stylesheet" href="../assets/css/main.css">
		<link rel="stylesheet" href="../assets/css/960.css">

        <script src="../assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
		
		
<style type="text/css">
.nav_area{  width:500px; height:30px; position:relative; margin-left:630px; margin-top:30px;}
.nav_area ul li{ list-style:none; list-style-type:none; float:left;  padding-left:5px; padding-right:5px; font-size:0.8em; font-weight:bolder}
.nav_area ul li a { text-decoration:none; color: #999999;}
.container-main{ height:1000px; padding-top:70px; background-color:rgba(177, 234, 244, 0.2) }
.content_header{ margin-top:15px; margin-left:10px; text-align:center; font-family:MerriweatherSans-Bold; font-weight: 600; color:#333333; line-height:1;}
.content_header_disc{ color:#006600; font-size:1em; margin-left:0; padding-left:10px; height:0; border-bottom:1px solid #CCCCCC }
.sidebar_1{ background:#FFFFFF; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px;margin-bottom:5px;border:#CCCCCC 1px solid; -webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); -moz-box-shadow:0px 0px 10px rgba(0, 0, 0, 0.2); box-shadow:0px 0px 10px rgba(0, 0, 0, 0.2);}
.content_reg_form{ padding-left:10px;}
.widget_1{ height:150px; }
.widget_2{ height:250px;}
.widget_3{ height:400px;}
.sidebar_left{ width:310px; height:1000px; float:left}
.registration_form{background:#FFFFFF;; height:1000px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; border:#CCCCCC 1px solid; -webkit-box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2); -moz-box-shadow:    0px 0px 10px rgba(0, 0, 0, 0.2); box-shadow:0px 0px 10px rgba(0, 0, 0, 0.2);}
.content_area{width:630px; height:1000px; float:left}
.input_name{ color: #666666}
.form_inputs{ width:585px; height:30px; margin-top:5px; margin-bottom:10px; font-size:1.2em; font-weight:400; padding-left:10px; color:#333333}
.input_comp_disc{ max-width:585px; min-width:585px; max-height:500px; padding-left:10px; font-size:1.2em; font-weight:400; color:#333333}
.but_submit{ background:#0033FF; color:#FFFFFF; font-weight:bold; width:150px; height:35px; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; border:none; margin-left:450px;}
</style>

    </head>
    <body>
	
		<div class="header-content" style=" position:fixed">
			<div class="container_12">
			<img src="../assets/img/university_logo.png" class="uni_logo"/><h1 class="header_text">Faculty of Information Technology - University of Moratuwa</h1>
			<div class="nav_area">
				<ul>
					<li><a href="comp_registration.html">Home</a></li>
					<li><a href="#">About Us</a></li>
					<li><a href="#">HOME</a></li>
					<li><a href="#">Contact Us</a></li>
					<li><a href="#">Help</a></li></ul>
			</div>
			</div>
		</div>
		<div class="container-main container_12">
			<div class="sidebar_left">
			
			<div class="sidebar_1 widget_1 grid_4 "></div>
			
			<div class="sidebar_1 widget_2 grid_4"></div>
			
			<div class="sidebar_1 widget_3 grid_4"></div>
			
			</div>
		<div class="content_area">
		<div class="registration_form grid_8">
			<h3 class="content_header">REGISTRATION FORM</h3>
			<p class="content_header_disc" style="color:#999999;">Get started with Internship Management System by filling out this simple form:</p>
				
			<div class="content_reg_form">
		    <s:form method="post" action="RegisterCompany" enctype="multipart/form-data" validate="true">
			<span class="input_name">Company Name:</span>			
			<s:textfield  name="companyName" cssClass="form_inputs"  ></s:textfield>
			<span class="input_name">Profile Picture:</span>
			<s:file  name="ProfilePicture" cssClass="form_inputs"/>
			<span class="input_name">Company Username:</span>
			<s:textfield  name="companyUserName" cssClass="form_inputs" ></s:textfield>
			<span class="input_name">Company password:</span>
			<s:password  name="password" cssClass="form_inputs"></s:password>
			<span class="input_name">Conform password:</span>
			<s:password  name="conPassword" cssClass="form_inputs"></s:password>
			<span class="input_name">Telephone No:</span>
			<s:textfield  name="companyTelephone" cssClass="form_inputs"></s:textfield>
			<span class="input_name">Contact Person :</span>
			<s:textfield  name="contactPerson" cssClass="form_inputs"></s:textfield>			
			<span class="input_name">Company Address :</span>
			<s:textfield  name="companyAddress" cssClass="form_inputs"></s:textfield>
			<span class="input_name">Company Web Url :</span>
			<s:textfield  name="companyWeb" cssClass="form_inputs"></s:textfield>
			<span class="input_name">No of Vacancies:</span>
			<s:textfield  name="noOfVacancies" cssClass="form_inputs"></s:textfield>
			<div><s:submit label="Register" cssClass="but_submit"></s:submit></div>
			</s:form>
			</div>
			
			</div>
	
	</div>
		</div>

        

        <script src="../assets/js/jquery.js"></script>
        <script>window.jQuery || document.write('<script src="../assets/js/vendor/jquery-1.9.1.min.js"><\/script>')</script>

        <script src="../assets/js/plugins.js"></script>
        <script src="../assets/js/main.js"></script>
    </body>
</html>
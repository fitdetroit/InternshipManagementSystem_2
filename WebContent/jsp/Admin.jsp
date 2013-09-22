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
<style type="text/css">  <%@include file="/assets/css/admin_styles.css" %>  </style>


<script src="assets/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
   <body class="<s:property value="%{#role}"/> <s:property value="%{#page}"/> <s:property value="%{#menu}"/>">
	<header class="header_container">
		<img src="assets/img/university_logo.png" class="university_logo"/>
		<h1 class="header_title">Internship Management System - Faculty of Information Technology </h1>
		<div class="login_detail">
			<span class="email"><s:property value="%{#session.userName}"/> </span>
			<a href="<s:url action="AdminLogOut"/>"><span class="logout">Logout</span></a></div></header>
	<div class="site_container">
		<div class="sidebar_left">		
<%@include file="/header/menus/side_menu_admin.jsp"%>		
		</div>
		<div class="container_main">
		<%@include file="/functions/admin_functions.jsp"%>
		</div>
	</div>

       
<script type="text/javascript"  src="assets/js/plugins.js"></script>
<script type="text/javascript" src="assets/js/main.js"></script>
    </body>
</html>

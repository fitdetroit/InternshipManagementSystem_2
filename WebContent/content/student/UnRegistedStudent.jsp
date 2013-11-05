<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>

<div class="notification_area">
	<h2>Welcome To Internship Management System</h2>
	<p>When each splash div was set to absolute positioning, but I realised that these would appear in different places in ...</p>
</div>
 
 <h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="LogOut"/>">(logout)</a></h3>

    



<div style="float:left;width:15%; color:#000000 ">

<p align="left"><a href="<s:url action="ViewStudentCV"/>">click here to view cv</a></p>

<p align="left"><a href="<s:url action="ViewToUpdateStudent"/>">click here to update profile</a></p>

<p align="left"><a href="<s:url action="ViewStateOfCompany"/>">view State of company</a></p>

<p align="left"><a href="<s:url action="ViewCompanyProfile"/>">click here to view Company Profiles</a></p>
</div>



<div style="float:left;width:85%; height: 668px;">
<h3 align="center">Registed Student Privilages</h3>
<br>
<p align="center"><a href="<s:url action="ViewStudentCV"/>">click here to view cv</a></p>
<br>

<p align="center"><a href="<s:url action="ViewToUpdateStudent"/>">click here to update profile</a></p>
<br>

<p align="center"><a href="<s:url action="ViewCompanyProfile"/>">click here to view Company Profiles</a></p>
</div>



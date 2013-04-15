<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administrator</title>
</head>
<body>
<h2 align="center">Internship Management System</h2>
<h2 align="center">Administrator</h2>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="AdminLogOut"/>">(logout)</a></h3>
<br>

<br>
<p align="center"><a href="<s:url action="AllStudent"/>">View Student Details</a></p>
<br>

<p align="center"><a href="<s:url action="AllowedCompany"/>">View Allowed Company Details</a></p>
<br>

<p align="center"><a href="<s:url action="NotAllowedCompany"/>">View Not Allowed Company Details</a></p>
<br>

<p align="center"><a href="<s:url action="HaddleCv"/>">To Allow And Reject CV</a></p>

<br>

<p align="center"><a href="<s:url action="NewStudetProfiles"/>">Enter students to system</a></p>

<br>

<p align="center"><a href="<s:url action="ToRemoveStudetProfiles"/>">Remove students From system</a></p>
</body>
</html>
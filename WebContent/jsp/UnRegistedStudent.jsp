<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Internship Management System</title>
</head>
<body>
<h2 align="center">Internship Management System</h2>
<p align="center">(un registed Student)</p>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="StudentLogOut"/>">(logout)</a></h3>
<br>
<p align="center"><a href="<s:url action="ViewCompanyProfile"/>">click here to view Company Profiles</a></p>
<br>
<p align="center"><a href="<s:url action="NewStudent"/>">click here to new register student</a><p>

<br>
<p align="center"><a href="<s:url action="ToChangePasswordStudent"/>">click here to change password</a><p>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registed Student</title>
</head>
<body>
<h2 align="center">Internship Management System</h2>
<p align="center">(registed Student)</p>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="StudentLogOut"/>">(logout)</a></h3>
<br>
<br>
<p align="center"><a href="<s:url action="ViewStudent"/>">click here to view profile</a></p>
<br>
<p align="center"><a href="<s:url action="ViewStudentCV"/>">click here to view cv</a></p>
<br>
<p align="center"><a href="<s:url action="ViewToUpdateStudent"/>">click here to update profile</a></p>
<br>
<p align="center"><a href="<s:url action="ViewCompanyProfile"/>">click here to view Company Profiles</a></p>

</body>
</html>
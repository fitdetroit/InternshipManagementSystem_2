<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 align="center">Internship Management System</h2>
<P align="center">(allowed company)</P>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="CompanyLogOut"/>">(logout)</a></h3>

<br>
<p align="center"><a href="<s:url action="ViewCompany"/>">click here to view company</a></p>
<br>
<p align="center"><a href="<s:url action="ViewToUpdateCompany"/>">click here to update company</a></p>
<br>
<p align="center"><a href="<s:url action="ViewStudentToCompany"/>">click here view applied students</a></p>
</body>
</html>
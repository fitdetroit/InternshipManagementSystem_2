<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<s:set name="menu" value="menu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="notification_area">
	<h2>Summary</h2>
	<hr>
</div>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><center>
<h3>Here is a summary of the ongoing process </h3>
<br>

<s:if test="%{#applyStudentCount==0}">
<p>Students not applied yet></p>
</s:if>

<s:else>
<p>Applied Student Count :</p><p><s:property  value="applyStudentCount" ></s:property></p>
<p>Number of students called for the interview :</p><p><s:property  value="interviewStudentCount" ></s:property></p>
<p>Number of students selected :</p><p><s:property  value="selectedStudentCount" ></s:property></p>
<p>Rejected Student Count:</p><p><s:property  value="notSelectedStudentCount" ></s:property></p>
</s:else>
</center>
</body>
</html>
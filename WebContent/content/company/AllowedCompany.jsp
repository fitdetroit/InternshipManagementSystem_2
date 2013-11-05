<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<s:set name="menu" value="menu"/>

<div class="notification_area">
	<h2>Welcome To Internship Management System</h2>
	<hr>
</div>
  



<br><h3>It is a great pleasure that your company registered in the Internship Management System of Faculty of Information Technology.</h3> <br>


<s:if test="%{#applyStudentCount==0}">
<p>Students not applied yet></p>
</s:if>

<s:else>

</s:else>


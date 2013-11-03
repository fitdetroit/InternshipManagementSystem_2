<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<s:set name="menu" value="menu"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="notification_area">
	<h2>Welcome To Internship Management System</h2>
	<p>When each splash div was set to absolute positioning, but I realised that these would appear in different places in ...</p>
</div>
  
<br>This is a Summary of the applied students

<s:if test="%{#applyStudentCount==0}">
<p>Students not applied yet></p>
</s:if>

<s:else>
<p>applyed Student Count:</p><p><s:property  value="applyStudentCount" ></s:property></p>
<p>interview Student Count:</p><p><s:property  value="interviewStudentCount" ></s:property></p>
<p>selected Student Count:</p><p><s:property  value="selectedStudentCount" ></s:property></p>
<p>not Selected Student Count:</p><p><s:property  value="notSelectedStudentCount" ></s:property></p>
</s:else>


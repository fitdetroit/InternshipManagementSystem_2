<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<s:set name="menu" value="menu"/>
<div class="notification_area">
	<h2>Welcome To Internship Management System</h2>
	<p>It is a great pleasure that your company registered in the Internship Management System of Faculty of Information Technology.</p>
</div>

<div class="form_container">
	<fieldset class="fieldset">
		<h2>Administrator's Message</h2>	
		<p>confirmOn plugin shows a confirmation box when the provided events are triggered. It works exactly like jQuery's .on() but with a confirmation step between the event and the handler. When the user clicks yes the handler is called, when the user clicks no the confirmation box hides itself and nothing else happens.</p>		
	</fieldset>
					
</div>
  






<s:if test="%{#applyStudentCount==0}">
<p>Students not applied yet></p>
</s:if>

<s:else>

</s:else>


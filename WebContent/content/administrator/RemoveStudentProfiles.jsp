<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>

<div class="content_wrapper">
			<header class="content_header"><h2>Delete Student Profiles</h2></header>
			<section>
			
			
<div>

<table align="center">
<tr><td><s:form method="post" action="DeleteStudetProfile" enctype="multipart/form-data" validate="true">
<tr><td><h4 >Student User name To Delete</h4> </td></tr>
<tr><td><s:textfield  label="User Name"  name="userName"></s:textfield> </td></tr>
<tr><td align="center"><s:submit value="Delete"></s:submit></td></tr>
</s:form>

</table>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<table align="center" border="5" bordercolor="red">
<tr><td><s:form method="post" action="DeleteAllStudetProfiles" enctype="multipart/form-data" validate="true">
<tr><td><h2 >Remove All Students From System</h2> </td></tr>
<tr ><td ><s:submit value="Remove" align="center"></s:submit></td></tr>
</s:form>

</table>
</div>
</section>

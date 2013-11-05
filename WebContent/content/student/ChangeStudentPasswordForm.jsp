<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>



<div>
<h2 align="center">Student Password Update Form</h2>
<br/>
<table align="center">
<tr><td><s:form method="post" action="updateStudentPassword" enctype="multipart/form-data">
<tr><td><s:password name="password" label="New password" /></td></tr>
<tr><td><s:password name="conPassword" label="Conform New password" /></td></tr>
<tr><td><s:hidden label="only update password" name="updateOnlyPassword" value="true" ></s:hidden></td> </tr> 
<tr><td align="center"><s:submit value="update"></s:submit></td></tr>

</s:form>
</td></tr>
</table></div>


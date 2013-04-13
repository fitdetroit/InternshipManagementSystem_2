<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">@import url(css/main.css);</style> <style> .errorMessage { color:red; }</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Registration Form</title>
</head>
<body>
<h2 align="center">Company Registration Form</h2>
<table align="center">
<tr><td><h4 >Company Details</h4></td></tr>
<tr><td><s:form method="post" action="RegisterCompany" enctype="multipart/form-data" validate="true">
<tr><td><s:textfield label="Company Name" name="companyName"></s:textfield></td> </tr> 
<tr><td><s:file label="Profile Picture" name="ProfilePicture"/></td> </tr>
<tr><td><s:textfield label="Company User Name" name="companyUserName"></s:textfield></td> </tr> 
<tr><td><s:password label="Company password" name="password"></s:password></td> </tr> 
<tr><td><s:password label="Conform password" name="conPassword"></s:password></td> </tr> 
<tr><td><s:textfield label="Telephone No" name="companyTelephone"></s:textfield></td> </tr> 
<tr><td><s:textfield label="Contact Person" name="contactPerson"></s:textfield></td> </tr> 
<tr><td><s:textfield label="Company Address" name="companyAddress"></s:textfield></td> </tr> 
<tr><td><s:textfield label="Company Web Url" name="companyWeb"></s:textfield></td> </tr> 
<tr><td><s:textfield label="No of Vacancies" name="noOfVacancies"></s:textfield></td> </tr> 



<tr><td align="center"><s:submit label="Save"></s:submit></td></tr>

</s:form>
</td></tr>
</table>
</body>
</html>
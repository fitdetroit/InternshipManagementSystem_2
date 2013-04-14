<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">@import url(css/main.css);</style> <style> .errorMessage { color:red; }</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company Details</title>
</head>
<body>
<h2 align="center">Update Company Details Form</h2>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="CompanyLogOut"/>">(logout)</a></h3>

<s:form method="post" action="UpdateCompany"  validate="true">
<table align="center">



  
     <tr><td><s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden></td> </tr>   
     <tr><td><s:hidden label="Company Hidden Name" name="companyName" value="%{companyName}" ></s:hidden></td> </tr> 
     <tr><td><s:textfield label="Company Name" name="companyName2" value="%{companyName}" disabled="true"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Telephone No" name="companyTelephone" value="%{companyTelephone}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Contact Person" name="contactPerson" value="%{contactPerson}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Company Address" name="companyAddress" value="%{companyAddress}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Company Web Url" name="companyWeb" value="%{companyWeb}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="No of Vacancies" name="noOfVacancies" value="%{noOfVacancies}"></s:textfield></td> </tr>
     <tr><td><s:password label="Company password" name="password" value="%{password}"></s:password></td> </tr> 
     <tr><td><s:password label="conform password" name="conPassword" value="%{conPassword}"></s:password></td> </tr>
      <tr><td><s:hidden label="Company Hidden password" name="password2" value="%{password2}" ></s:hidden></td> </tr>  
    
     <tr><td align="center"><s:submit label="Save"></s:submit></td></tr>

  

 
</table>
 </s:form>
</body>
</html>
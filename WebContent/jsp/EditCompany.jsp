<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Internship Management System</title>
<style type="text/css">
	.heading
	{
	color:silver;
	font-family:Cambria;
	font-size:30px;
	}
	.ldm
	{
	font-family:Cambria;
	color:gray;
	text-align:right;
	}
	.tags
	{
	color:white;
	font-family:Cambria;
	font-size:15px;
	background-color:#3E3E3E;
	text-align:right;
	}
	.ankers
	{
	font-family:Cambria;
	font-style:italic;
	font-size:20px;
	color:orange;
	}
	.content1
	{
	color:black;
	font-family:Calibri;
	font-size:15px;
	text-align:left;
	background-color:#808080;
	}
	a:link{color:white;}
	a:visited{color:white;}
	a:hover{color:yellow;}
	a:active{color:gray;}
</style>
</head>

<body bgcolor="gray">



<div style="height: 118px; background:gray" >
<h2 align="center">Internship Management System</h2>
<h2 align="center">Company</h2>

<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="../LogOut"/>">(logout)</a></h3></div>



<div style="float:left;width:15%; height: 672px;background=#333333">



<p align="left"><a href="<s:url action="ViewCompany"/>">click here to view company</a></p>

<p align="left"><a href="<s:url action="ViewToUpdateCompany"/>">click here to update company</a></p>


</div>



<div style="float:left;width:85%; height: 668px;background:silver">
<h2 align="center">Update Company Details Form</h2>


<s:form method="post" action="UpdateCompany"  enctype="multipart/form-data" validate="true">
<table align="center">



  
     <tr><td><s:hidden label="Company User Name" name="companyUserName" value="%{company.companyUserName}"></s:hidden></td> </tr>   
     <tr><td><s:hidden label="Company Hidden Name" name="companyName" value="%{company.companyName}" ></s:hidden></td> </tr> 
     <tr><td><s:textfield label="Company Name" name="companyName2" value="%{company.companyName}" disabled="true"></s:textfield></td> </tr> 
     <tr><td><s:file label="Update Profile Picture" name="ProfilePicture"/></td> </tr>
     <tr><td><s:textfield label="Telephone No" name="companyTelephone" value="%{company.companyTelephone}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Contact Person" name="contactPerson" value="%{company.contactPerson}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Company Address" name="companyAddress" value="%{company.companyAddress}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="Company Web Url" name="companyWeb" value="%{company.companyWeb}"></s:textfield></td> </tr> 
     <tr><td><s:textfield label="No of Vacancies" name="noOfVacancies" value="%{company.noOfVacancies}"></s:textfield></td> </tr>
     <tr><td><s:password label="Company password" name="password" ></s:password></td> </tr> 
     <tr><td><s:password label="conform password" name="conPassword" value="%{company.password}"></s:password></td> </tr>
      <tr><td><s:hidden label="Company Hidden password" name="password2" value="%{company.password}" ></s:hidden></td> </tr>  
    
     <tr><td align="center"><s:submit label="Save"></s:submit></td></tr>

  

 
</table>
 </s:form>
 
 </div>



</body>

</html>

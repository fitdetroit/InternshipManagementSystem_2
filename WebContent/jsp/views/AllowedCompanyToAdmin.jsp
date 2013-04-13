<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Allowed Company Details</title>
</head>
<body>
<h3 align="center">Allowed Company Details</h3>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="AdminLogOut"/>">(logout)</a></h3>
<table border="1" align="center">
<tr>
    <th width="200">Company Name</th>
    <th width="200">Company Telephone</th>
    <th width="200">Contact Persion Name</th>
    <th width="200">Address</th>
    <th width="200">Company Web</th>
    <th width="200">No of VAcancies</th>
    <th width="150">View full profile</th>
    <th width="150">Un Register</th>
    <th width="150">Remove</th>
    
    
    
</tr>
<s:iterator value="list" var="student">
    <tr>
        <td><s:property value="companyName"/> </td>
        <td><s:property value="companyTelephone"/> </td>
        <td><s:property value="contactPerson"/> </td>
        <td><s:property value="companyAddress"/> </td>
        <td><s:property value="companyWeb"/> </td>
        <td><s:property value="noOfVacancies"/> </td>
        
       <td><s:form method="post" action="FullCompanyProfileToAdmin" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden></td>        
        <td><s:submit value="View" ></s:submit></td> 
        </s:form></td>
        
        <td><s:form method="post" action="UnRegisterCompany" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden></td>
         <td><s:hidden label="Company User Name" name="password" value=""></s:hidden></td>
        <td><s:submit value="Un Register" ></s:submit></td> 
        </s:form></td>
        
                <td><s:form method="post" action="DeletCompanyAllowed" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden></td>
         <td><s:hidden label="Company User Name" name="password" value=""></s:hidden></td>
        <td><s:submit value="Remove" ></s:submit></td> 
        </s:form></td>
        
 
   
    </tr>
</s:iterator>
</body>
</html>
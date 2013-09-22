<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>


<div>
<h2 align="center">Company Details</h2>
<table class="content_table ">
<tr class="table_header">
    <td>No.</td>
    <td>Company Name</td>
    <td>Address</td>
    <td>Telephone</td>
    <td>Contact Persion</td>
    <td>Company Web</td>
    <td>Vacancies</td>
    <td>View</td>
    
</tr>
<s:iterator value="list" var="company">
    <tr><td>&nbsp;</td>
        <td><s:property value="companyName"/> </td>
        <td><s:property value="companyAddress"/> </td>
        <td><s:property value="companyTelephone"/> </td>
        <td><s:property value="contactPerson"/> </td>
        <td><s:property value="companyWeb"/> </td>
        <td><s:property value="noOfVacancies"/> </td>
        
       <td><s:form method="post" action="FullCompanyProfileToStudent" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>     
        <input type="submit"  class="but_view" value="" />
        </s:form></td>
        
   
    </tr>
</s:iterator>
</table></div>



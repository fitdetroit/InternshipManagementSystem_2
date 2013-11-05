<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>



<div class="content_wrapper">
			<header class="content_header"><h2>Registered Companies</h2></header>
			<section>

<table cellpadding="0" cellspacing="0" class="content_table">
			<tr class="table_header">
				<td>No.</td><td>Company Name</td><td>Address</td><td>Company Telephone</td><td>Contact Persion</td><td>Company Web</td><td>No. of Vacancies</td><td>Action</td>
				
			</tr>
<s:iterator value="list" var="student">
	<tr>
		<td>&nbsp;</td>		
		<td><s:property value="companyName"/> </td>
		<td><s:property value="companyAddress"/> </td>
        <td><s:property value="companyTelephone"/> </td>
        <td><s:property value="contactPerson"/> </td>
        <td><s:property value="companyWeb"/> </td>
        <td><s:property value="noOfVacancies"/> </td>
        
       <td><s:form method="post" action="FullCompanyProfileToAdmin" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden> 
        <input type="submit" value="" class="but_view" />
        </s:form>
        
        <s:form method="post" action="UnRegisterCompany" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>
        <s:hidden label="Company User Name" name="password" value=""></s:hidden>
        <input type="submit" value="" class="but_discard"/>
        </s:form>
        
        <s:form method="post" action="DeletCompanyAllowed" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>
        <s:hidden label="Company User Name" name="password" value=""></s:hidden>
        <input type="submit" value="" class="but_remove"/>
        </s:form></td>
        
        
        
			</tr>
</s:iterator>
			</table>
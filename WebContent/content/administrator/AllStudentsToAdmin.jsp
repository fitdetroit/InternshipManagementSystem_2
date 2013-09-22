<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>


<div class="content_wrapper">
			<header class="content_header"><h2>Registered Student's Details</h2></header>
			<section>

<table cellpadding="0" cellspacing="0" class="content_table">
			<tr class="table_header">
				<td>No.</td><td>Name In Full</td><td>Name With Initials</td><td>Gender</td><td>Mobile No 1</td><td>Mobile No 2</td><td>Telephone</td><td>Emails</td><td>Year of Admission</td><th>View</th>
				
			</tr>
<s:iterator value="list" var="student">
    <tr><td>&nbsp;</td>
        <td><s:property value="nameInFull"/> </td>
        <td><s:property value="nameWithInitials"/> </td>
        <td><s:property value="gender"/> </td>
        <td><s:property value="mobile1"/> </td>
        <td><s:property value="mobile2"/> </td>
        <td><s:property value="telephone"/></td>
         <td><s:property value="email"/></td>
        <td><s:property value="yearOfAdmission"/></td>

        
        <td><s:form method="post" action="StudentCvToAdmin" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="studentUserName" value="%{studentUserName}"></s:hidden>        
        <input type="submit" value="" class="but_view"/> 
        </s:form></td>
  
    </tr>
</s:iterator>
</table>

</section>


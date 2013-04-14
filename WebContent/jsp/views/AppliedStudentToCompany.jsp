<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Student's Details</title>
</head>
<body>
<h2 align="center">Applied Student Details</h2>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="CompanyLogOut"/>">(logout)</a></h3>
<table border="1" align="center">
<tr >
    <th width="220">Name In Full</th>
    <th width="220">Name With Initials</th>
    <th width="50">Gender</th>
    <th width="100">Mobile No 1</th>
    <th width="100">Mobile No 2</th>
    <th width="100">Telephone</th>
    <th width="100">Email</th>
    <th width="100">Year of Admission</th>
      <th width="150">View full profile</th>


    
    
    
</tr>
<s:iterator value="list" var="student">
    <tr>
        <td><s:property value="nameInFull"/> </td>
        <td><s:property value="nameWithInitials"/> </td>
        <td><s:property value="gender"/> </td>
        <td><s:property value="mobile1"/> </td>
        <td><s:property value="mobile2"/> </td>
        <td><s:property value="telephone"/></td>
         <td><s:property value="email"/></td>
        <td><s:property value="yearOfAdmission"/></td>
                <td><s:form method="post" action="StudentCvToCompany" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="studentUserName" value="%{studentUserName}"></s:hidden></td>        
        <td><s:submit value="View" ></s:submit></td> 
        </s:form></td>

  
    </tr>
</s:iterator>
</table>
</body>
</html>
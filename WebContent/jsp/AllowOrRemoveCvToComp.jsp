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
<h2 align="center">Allow And Remove CV to Company</h2>
<h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="AdminLogOut"/>">(logout)</a></h3>
<table border="1" align="center" width="100%">


    <tr >
    
    <td valign="top">
    <table  align="left" width="100%" >

       <tr> 
       <td>Company Name</td>
       <td>Sent CV to Company</td>

        </tr>
         <s:iterator value="list" var="company">
        <tr>
      
        <td><s:property value="companyName"/> </td>
      <td> <s:form method="post" action="AllowCvToCompany" enctype="multipart/form-data" validate="true">
       <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>
       <s:hidden label="Company  password" name="password" value=""></s:hidden>        
        <s:submit value="Allow CV" ></s:submit>
        </s:form></td>
     
        </tr>
           </s:iterator>
        </table>        
      </td>
        
        
    <td valign="top">
    <table align="right" width="100%">
              <tr> 
       <td>Company Name</td>
       <td>Remove CV form Company</td>
        </tr>
         <s:iterator value="list2" var="company">
        <tr>       
        
        <td><s:property value="companyName"/> </td>
       <td><s:form method="post" action="RemoveCvFormCompany" enctype="multipart/form-data" validate="true">
        <s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>
        <s:hidden label="Company password" name="password" value=""></s:hidden>
        <s:submit value="Remove CV" ></s:submit>
        </s:form></td>
         
             </tr> 
              </s:iterator>
         </table></td>

        

        

           
    </tr>
    </table>
</body>
</html>
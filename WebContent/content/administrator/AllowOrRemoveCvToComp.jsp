<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>

<div class="content_wrapper">
			<header class="content_header"><h2>Students'  CVs</h2></header>
			<section>
			
			

<div style="float:left;width:85%; height: 668px;">
<h2 align="center">Allow And Remove CV to Company</h2>

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
</div>

</section>

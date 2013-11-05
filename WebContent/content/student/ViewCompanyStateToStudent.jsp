<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>


<div>

<h4 align="center">Company State Details</h4>

<table align="center" border="1" >
<tr >
    <th width="220">Company Name:</th>
    <th width="220">State of Company</th>
    </tr>

    <s:iterator value="studentCompanyList" >
    <tr>

        <td width="220" ><s:property value="%{pk.company.companyUserName}"/> </td>
        <td width="220"><s:property value="%{state}"/> </td>

 </tr>
</s:iterator>
<s:form method="post" action="UpdateNewApplyCompany" enctype="multipart/form-data" validate="true">
<s:if test="%{newAppliedCompnay1!=null}">
<s:select list="%{studentCanAppliedCompany}"   label=" New Company Name 1" name="newAppliedCompnay1" ></s:select> 
</s:if>
<s:if test="%{newAppliedCompnay2!=null}">
<s:select list="%{studentCanAppliedCompany}"   label="New Company Name 2" name="newAppliedCompnay2"></s:select> 
</s:if>
<s:if test="%{newAppliedCompnay3!=null}">
<s:select list="%{studentCanAppliedCompany}"   label="New Company Name 3" name="newAppliedCompnay3"></s:select> 
</s:if>
<s:if test="%{newAppliedCompnay4!=null}">
<s:select list="%{studentCanAppliedCompany}"   label=" New Company Name 4" name="newAppliedCompnay4"></s:select> 
</s:if>
<s:if test="%{newAppliedCompnay5!=null}">
<s:select list="%{studentCanAppliedCompany}"   label="New Company Name 5" name="newAppliedCompnay5"></s:select> 
</s:if>

<s:if test="%{newAppliedCompnay1!=null}"><s:submit label="Apply" align="center" ></s:submit></s:if>
</s:form>


</table>

</div>


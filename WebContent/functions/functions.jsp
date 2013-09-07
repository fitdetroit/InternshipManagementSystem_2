<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="page" value="page"/>
<s:set name="menu" value="menu"/>

<s:if test="%{#page==null}">
	<%@include file="/content/company/CompanyRegistrationForm.jsp" %>
</s:if>
<s:if test="%{#page=='Admin.jsp'}">
	<%@include file="/jsp/Admin.jsp" %>
</s:if>
<s:if test="%{#page=='RegistedStudent.jsp'}">
	<%@include file="/jsp/RegistedStudent.jsp" %>
</s:if>
<s:if test="%{#page=='AllowedCompany.jsp'}">
	<%@include file="/content/company/AllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotAllowedCompany.jsp'}">
	<%@include file="/content/company/NotAllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotAllowedCompany.jsp'}">
	<%@include file="/content/company/NotAllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='CompanyViewToCompany.jsp'}">
	<%@include file="/content/company/CompanyViewToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='EditCompany.jsp'}">
	<%@include file="/jsp/EditCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotSelectForInterviewToCompany.jsp'}">
	<%@include file="/content/company/NotSelectForInterviewToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='SelectedForInterviewToCompnay.jsp'}">
	<%@include file="/content/company/SelectedForInterviewToCompnay.jsp" %>
</s:if>
<s:if test="%{#page=='SelectedForInternshipToCompany.jsp'}">
	<%@include file="/content/company/SelectedForInternshipToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='AllowedCompanyToCompany.jsp'}">
	<%@include file="/content/company/AllowedCompanyToCompany.jsp" %>
</s:if>

<!-- menu Actions -->
<s:if test="%{#menu=='Manage'}" >
	<%@include file="/content/company/ManageStudents.jsp" %>
</s:if>


<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="page" value="page"/>

<s:if test="%{#page==null}">
	<%@include file="/jsp/CompanyRegistrationForm.jsp" %>
</s:if>
<s:if test="%{#page=='Admin.jsp'}">
	<%@include file="/jsp/Admin.jsp" %>
</s:if>
<s:if test="%{#page=='RegistedStudent.jsp'}">
	<%@include file="/jsp/RegistedStudent.jsp" %>
</s:if>
<s:if test="%{#page=='AllowedCompany.jsp'}">
	<%@include file="/jsp/AllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotAllowedCompany.jsp'}">
	<%@include file="/jsp/NotAllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotAllowedCompany.jsp'}">
	<%@include file="/jsp/NotAllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='CompanyViewToCompany.jsp'}">
	<%@include file="/jsp/views/CompanyViewToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='EditCompany.jsp'}">
	<%@include file="/jsp/EditCompany.jsp" %>
</s:if>
<s:if test="%{#page=='NotSelectForInterviewToCompany.jsp'}">
	<%@include file="/jsp/views/NotSelectForInterviewToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='SelectedForInterviewToCompnay.jsp'}">
	<%@include file="/jsp/views/SelectedForInterviewToCompnay.jsp" %>
</s:if>
<s:if test="%{#page=='SelectedForInternshipToCompany.jsp'}">
	<%@include file="/jsp/views/SelectedForInternshipToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='AllowedCompanyToCompany.jsp'}">
	<%@include file="/jsp/views/AllowedCompanyToCompany.jsp" %>
</s:if>


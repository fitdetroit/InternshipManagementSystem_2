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

<s:if test="%{#page=='CompanyViewToCompany.jsp'}">
	<%@include file="/content/company/CompanyViewToCompany.jsp" %>
</s:if>
<s:if test="%{#page=='EditCompany.jsp'}">
	<%@include file="/content/company/EditCompany.jsp" %>
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
<s:if test="%{#page=='AppliedStudentCvToCompany'}">
	<%@include file="/content/company/AppliedStudentCvToCompany.jsp" %>
</s:if>

<s:if test="%{#page=='FullCompanyToCompany'}">
	<%@include file="/content/company/FullCompanyToCompany.jsp" %>
</s:if>


<!-- menu Actions -->
<s:if test="%{#page=='ManageStudents'}" >
	<%@include file="/content/company/ManageStudents.jsp" %>
</s:if>

<s:if test="%{#page=='AllowedCompany'}" >
	<%@include file="/content/company/AllowedCompany.jsp" %>
</s:if>
<s:if test="%{#page=='Support'}" >
	<%@include file="/content/common/support.jsp" %>
</s:if>

<s:if test="%{#page=='UpdateVecancies'}" >
	<%@include file="/content/company/UpdateVecancies.jsp" %>
</s:if>

<s:if test="%{#page=='RegistedStudent'}" >
	<%@include file="/content/student/RegistedStudent.jsp" %>
</s:if>

<s:if test="%{#page=='StudentViewToStudent'}" >
	<%@include file="/content/student/StudentViewToStudent.jsp" %>
</s:if>

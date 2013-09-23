<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="page" value="page"/>
<s:set name="menu" value="menu"/>

<s:if test="%{#page==null}">
	<%@include file="/content/company/CompanyRegistrationForm.jsp" %>
</s:if>
<s:if test="%{#page=='RegistedStudent.jsp'}">
	<%@include file="/content/student/RegistedStudent.jsp" %>
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

<s:if test="%{#page=='FullCompanyToStudent'}">
	<%@include file="/content/student/FullCompanyToStudent.jsp" %>
</s:if>

<s:if test="%{#page=='StudentCvToStudent'}">
	<%@include file="/content/student/StudentCvToStudent.jsp" %>
</s:if>
<s:if test="%{#page=='AllowedCompanyToStudent'}">
	<%@include file="/content/student/AllowedCompanyToStudent.jsp" %>
</s:if>
<s:if test="%{#page=='editDetails'}">
	<%@include file="/content/student/EditStudent.jsp" %>
</s:if>
<s:if test="%{#page=='ViewStudentStateOfCompany'}">
	<%@include file="/content/student/StudentViewToStudent.jsp" %>
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
<s:if test="%{#page=='Messages_company'}" >
	<%@include file="/content/company/Messages_company.jsp" %>
</s:if>
<s:if test="%{#page=='CreateNewMsgCompany'}" >
	<%@include file="/content/company/CreateNewMsgCompany.jsp" %>
</s:if>
<s:if test="%{#page=='InboxCompany'}" >
	<%@include file="/content/company/InboxCompany.jsp" %>
</s:if>



<s:if test="%{#page=='RegistedStudent'}" >
	<%@include file="/content/student/RegistedStudent.jsp" %>
</s:if>

<s:if test="%{#page=='StudentViewToStudent'}" >
	<%@include file="/content/student/StudentViewToStudent.jsp" %>
</s:if>

<s:if test="%{#page=='MenuCompanypage'}" >
	<%@include file="/content/student/MenuCompanypage.jsp" %>
</s:if>

<s:if test="%{#page=='MessageDefault'}" >
	<%@include file="/content/student/MessageDefault.jsp" %>
</s:if>

<s:if test="%{#page=='internshipDefault'}" >
	<%@include file="/content/student/internshipDefault.jsp" %>
</s:if>

<s:if test="%{#page=='internshipDefault'}" >
	<%@include file="/content/student/internshipDefault.jsp" %>
</s:if>








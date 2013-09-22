<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="page" value="page"/>
<s:set name="menu" value="menu"/>

<s:if test="%{#page=='Adminpage'}"> 
	<%@include file="/content/administrator/dashboard.jsp" %>
</s:if>
<s:if test="%{#page==null}"> 
	<%@include file="/content/administrator/dashboard.jsp" %>
</s:if>
<s:if test="%{#page=='allowedCompanyToAdmin'}"> 
	<%@include file="/content/administrator/AllowedCompanyToAdmin.jsp" %>
</s:if>
<s:if test="%{#page=='FullProfileToAdmin'}"> 
	<%@include file="/content/administrator/FullCompanyToAdmin.jsp" %>
</s:if>

<s:if test="%{#page=='notallowedCompanyToAdmin'}"> 
	<%@include file="/content/administrator/NotAllowedCompanyToAdmin.jsp" %>
</s:if>

<s:if test="%{#page=='allStudentToAdmin'}"> 
	<%@include file="/content/administrator/AllStudentsToAdmin.jsp" %>
</s:if>
<s:if test="%{#page=='studentCvToAdmin'}"> 
	<%@include file="/content/administrator/StudentCvToAdmin.jsp" %>
</s:if>
<s:if test="%{#page=='ToRemoveStudetProfiles'}"> 
	<%@include file="/content/administrator/RemoveStudentProfiles.jsp" %>
</s:if>
<s:if test="%{#page=='createStudentProfiles'}"> 
	<%@include file="/content/administrator/CreateNewStudentProfiles.jsp" %>
</s:if>

<s:if test="%{#page=='allowAndRemoveCv'}"> 
	<%@include file="/content/administrator/AllowOrRemoveCvToComp.jsp" %>
</s:if>










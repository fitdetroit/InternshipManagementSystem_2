<%@ taglib prefix="s" uri="/struts-tags" %>

<s:if test="%{#role==null}">
	<%@include file="/header/menus/main_menu-common.jsp" %>
</s:if>

<s:if test="%{#role=='allowedCompany'}">
	<%@include file="/header/menus/main_menu_allowed_comp.jsp" %>
</s:if>

<s:if test="%{#role=='regiStudent'}">
	<%@include file="/header/menus/main_menu_reg_student.jsp" %>
</s:if>

<s:if test="%{#role=='notAllowedCompany'}">
	<%@include file="/header/menus/main_menu-common.jsp" %>
</s:if>
<s:if test="%{#role=='notRegiStudent'}">
	<%@include file="/header/menus/main_menu_not_reg_student.jsp" %>
</s:if>




 


	
	
	
	
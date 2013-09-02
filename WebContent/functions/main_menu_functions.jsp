<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="role" value="role"/>

<s:if test="%{#role==null}">
	<%@include file="/header/menus/main_menu-common.jsp" %>
</s:if>

<s:if test="%{#role=='allowedCompany'}">
	<%@include file="/header/menus/main_menu-common.jsp" %>
</s:if>

	
	
	
	
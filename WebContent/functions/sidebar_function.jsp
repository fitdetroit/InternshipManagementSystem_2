<%@ taglib prefix="s" uri="/struts-tags" %>

<s:set name="role" value="role"/>

<s:if test="%{#role==null}">
	
</s:if>

<s:if test="%{#role=='allowedCompany'}">
	<%@include file="/header/menus/widget_side_menu_allowed_comp.jsp" %>
</s:if>
<s:if test="%{#role=='notAllowedCompany'}">
	<%@include file="/header/menus/widget_side_menu_notallowed_comp.jsp" %>
</s:if>



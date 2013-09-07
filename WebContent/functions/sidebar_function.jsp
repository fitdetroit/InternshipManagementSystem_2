<%@ taglib prefix="s" uri="/struts-tags" %>


<s:if test="%{#role==null}">
	
</s:if>


<s:if test="%{#role=='allowedCompany' && #menu=='Manage'}" >
	<%@include file="/header/menus/widget_side_menu_manage.jsp" %>
</s:if>

<s:elseif test="%{#role=='allowedCompany'}">
	<%@include file="/header/menus/widget_side_menu_allowed_comp.jsp" %>
</s:elseif>
<s:if test="%{#role=='notAllowedCompany'}">
	<%@include file="/header/menus/widget_side_menu_notallowed_comp.jsp" %>
</s:if>




<%@ taglib uri="/struts-tags" prefix="s"%>
<div class="notifi_reg-form">
      <h2>Welcome to Internship Management System</h2>
      <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum</p>
    </div>
 
 <h3 align="right">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="LogOut"/>">(logout)</a></h3>

    
<%@ taglib uri="/struts-tags" prefix="s"%>

<h2>Messages > Inbox</h2>
					
					
					<div class="form_container">
					<fieldset class="fieldset msg_container">
					<div class="container_top">
						<a href="<s:url action='CreateNewMsgCompany'/>"><input type="submit" value="Create New" class="but_create"/></a>
					</div>
					<div class="msg_sub_container">
					
						<div class="msg_left_container">
							<div class="sub_menu">
								<ul><a href="<s:url action='MessageAction'/>"><li>Inbox</li></a>
									<a href="<s:url action='CompMessageOutBox'/>"><li>Outbox</li></a>
								</ul>
							</div>
							<div class="msg_list_container">
							<ul>
								<a href="#"><li>this is first mail</li></a>
								<a href="#"><li>this is second mail</li></a>
							</ul></div>
						
						</div>
						
						<div class="msg_right_container">
						<s:iterator value="msgList" >
							<h3 class="msg_header"><s:property value="subject"/></h3>
							<fieldset class="msg_body_container">
								<div class="msg_body_top">
									<label>Sent By: <s:property value="senderId"/></label>
									<label>Date : <s:property value="date"/></label>
								</div>
								<div class="msg_body">
									<p><s:property value="content"/></p>
								</div>
							</fieldset>
							</s:iterator>
						</div>
						
					</div>
					
					</fieldset> <!-- /End msg_container-->
					
					
						
						
					</div><!-- /End Form container-->

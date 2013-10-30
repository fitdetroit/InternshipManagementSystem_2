<%@ taglib uri="/struts-tags" prefix="s"%>

<h2>Messages > Outbox</h2>
					
					
					<div class="form_container">
					<fieldset class="fieldset msg_container">
					<div class="container_top">
						<a href="<s:url action='CreateNewMsgCompany'/>"><input type="submit" value="Create New" class="but_create"/></a>
					</div>
					<div class="msg_sub_container">
					
						<div class="msg_left_container">
							<div class="sub_menu">
								<ul><a href="<s:url action='MessageActionByStd'/>"><li>Inbox</li></a>
									<a href="<s:url action='MessageOutBoxStudent'/>"><li>Outbox</li></a>
								</ul>
							</div>
							<div class="msg_list_container">
							<ul>
								<a href="#"><li>this is first mail</li></a>
								<a href="#"><li>this is second mail</li></a>
							</ul></div>
						
						</div>
						<div class="msg_right_container">
							<h3 class="msg_header">not register student set login name as userName for not registed student</h3>
							<fieldset class="msg_body_container">
								<div class="msg_body_top">
									<label>Sent By : Administrator</label>
									<label>Date : 2012-12-02 12:34</label>
								</div>
								<div class="msg_body">
									<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem</p>
								</div>
							</fieldset>
						</div>
						
					</div>
					
					</fieldset> <!-- /End msg_container-->
					
					
						
						
					</div><!-- /End Form container-->

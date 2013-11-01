<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>Messages</h2>
					
	<s:form id="SendMessagebyCompany" method="post" action="MessageFromCompany" enctype="multipart/form-data" >				
					<div class="form_container">
					<fieldset class="fieldset msg_container">
						<div class="newmsg_container">
							<div class="inputrow">
								<label class="inputlabel">Subject</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Enter Your Message Sy=ubject Here" class="autocomplete_field long" name="subject" />
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Message</label>
								<div class="inputarea">													 
								<textarea class="jqte-test" name="content"></textarea>
								<script>
									$('.jqte-test').jqte();
									
									// settings of status
									var jqteStatus = true;
									$(".status").click(function()
									{
										jqteStatus = jqteStatus ? false : true;
										$('.jqte-test').jqte({"status" : jqteStatus})
									});
								</script>
								</div>
								
							</div>
							<div class="inputrow new_msg_but_container" >
								<div class="inputarea">													 
									 <input type="submit" value="Send" class="but_submit"/>
									 <input type="submit" value="Cancel" class="but_change"/>
								</div>
							</div>
						
						</div>
					</fieldset>
					
					</fieldset> <!-- /End msg_container-->


</div><!-- /End Form container-->




</s:form>
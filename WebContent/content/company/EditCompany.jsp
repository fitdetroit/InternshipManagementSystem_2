<%@ taglib uri="/struts-tags" prefix="s"%>
<s:form method="post" action="UpdateCompany"  validate="true">
<s:hidden name="companyUserName" value="%{companyUserName}"></s:hidden>
<s:hidden cssClass="form_inputs" name="companyName" value="%{companyName}" ></s:hidden>
					
					<div class="form_container">
			
			
			<h3>Update Profile</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Name of the company</label>
								<div class="inputarea">													 
									 <input type="text" value="<%= request.getAttribute("companyName") %>" disabled="disabled" class="autocomplete_field half input_disabled"  name="companyName"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Change Company Logo</label>
								<div class="inputarea">													 
			
									<input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">About Company </label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" ></textarea>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Username</label>
								<div class="inputarea">													 
									 <input type="text" value="<%= request.getAttribute("companyUserName") %>" disabled="disabled" name="companyUserName" class="autocomplete_field half input_disabled" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Password</label>
								<div class="inputarea">													 
									 <input type="password" id="password" name="password" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Repeat Password</label>
								<div class="inputarea">													 
									 <input type="password" name="conPassword" placeholder="Confirm your Password" class="autocomplete_field half" />
								</div>
							</div>
						</fieldset>
						
					<h3>Technologies</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half" value="<%= request.getAttribute("technologies") %>"/>
								</div>
							</div>
						</fieldset>	
						
						
					<h3>Genaral Contact Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("companyTelephone") %>"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Company Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" value="<%= request.getAttribute("companyAddress") %>"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Website URL</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" value="<%= request.getAttribute("companyWeb") %>"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" value="<%= request.getAttribute("companyEmail") %>"/>
								</div>
							</div>
						</fieldset>
						
						
						<h3 class="header_importent">Provide contact details for the use of Administrator</h3>
						
						<fieldset class="fieldset importent">
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("contactPerson") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("contactPersonTelNo") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("contactPersonEmail") %>"/>
								</div>
							</div>
							
							<hr>
							<p>Alternative contact person (optional)</p>
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("alContactPerson") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("alContactPersonTelNo") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" value="<%= request.getAttribute("alContactPersonEmail") %>"/>
								</div>
							</div>
						</fieldset>
						
						<fieldset class="fieldset">
							<div class="inputrow">
								<input type="checkbox" name="tick"/>
                <label for="tick">&nbsp; Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley</label>
 
							</div>
						</fieldset>	
						
						
						<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">	
								<s:hidden cssClass="form_inputs" label="Company Hidden password" name="password2" value="%{password2}" ></s:hidden>												 
									 <input type="submit" value="SUBMIT" class="but_submit" id="signUp"/>
									 <input type="submit" value="CANCEL" class="but_submit" id="signUp"/>
									
								</div>
						</div>
						
						
					</div><!-- /End Form container-->

</s:form>
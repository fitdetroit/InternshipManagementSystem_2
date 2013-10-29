<%@ taglib uri="/struts-tags" prefix="s"%>
<s:form method="post" action="RegisterCompany" id="signUp" enctype="multipart/form-data">
					<div class="notification_area">
						<h2>Welcome To Internship Management System</h2>
						<p>When each splash div was set to absolute positioning, but I realised that these would appear in different places in ...</p>
					</div>
					
					<div class="form_container">
			
			
			<h3>Genaral Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Name of the company</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="companyName"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Select a Profile Picture</label>
								<div class="inputarea">													 
			
									<input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">About Company </label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" placeholder="Type project name to find existing" ></textarea>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Username</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" name="companyUserName" class="autocomplete_field half" />
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
									 <input type="password" name="conPassword" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
						</fieldset>
						
					<h3>Technologies</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" placeholder="Type project name to find existing" ></textarea>
								</div>
							</div>
						</fieldset>	
						
					<h3>Genaral Contact Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Company Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Website URL</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
						</fieldset>
						
						<h3>Genaral Contact Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Company Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Website URL</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" />
								</div>
							</div>
						</fieldset>
						
						<h3 class="header_importent">For office use only</h3>
						<h3 >Contact Person</h3>
						<fieldset class="fieldset importent">
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							<p>This field is optional</p>
							<hr>
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half" />
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
									 <input type="submit" value="SUBMIT" class="but_submit" id="signUp"/>
									 
									 <input type="submit" value="RESET" class="but_create"/>
								</div>
						</div>
						
						
					</div><!-- /End Form container-->
</s:form>
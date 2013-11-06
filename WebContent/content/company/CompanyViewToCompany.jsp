<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>Company Profile</h2>
					<div class="form_container">
					<fieldset class="fieldset">
						<div class="contentrow">
						<div class="profile_image_container">
								<s:url id="url" action="GetImageStudent">
            					<s:param name="userName"><s:property value="%{#session.userName}"/> </s:param>
                			</s:url>
               				<img src="<s:property value='#url'/>"  class="profileimage"/>
						</div>
						<div class="profile_header_container ">
							<h4><s:property  value="company.companyName"></s:property></h4>
							<p><s:property  value="company.companyAddress"></s:property></p>

							<p class="longtext"><s:property  value="company.aboutCompany"></s:property></p>

						
						</div>
						
						</div>
					</fieldset>
					<h3>General Information</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Username</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.companyUserName"></s:property></p>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">No. of Vacancies</label>
								<div class="inputarea">													 
									 <p>10</p>
								</div>
							</div>
						</fieldset>
						
					<h3>Technologies</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.technologies"></s:property> </p>
								</div>
							</div>
						</fieldset>
						
					<h3>Contact Information - Genaral Contacts</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.companyTelephone"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Fax</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.companyTelephone"></s:property> </p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">E-mail</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.companyEmail"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Web Site</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.companyWeb"></s:property></p>
								</div>
							</div>
						</fieldset>
						
						
					<h3>Contact Information - Contact Person</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Name</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.contactPerson"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.contactPersonTelNo"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Email</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.contactPersonEmail"></s:property></p>
								</div>
							</div>
						</fieldset>
						
						
					<h3>Contact Information - Alternative Contact Person</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Name</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.alContactPerson"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.alContactPersonTelNo"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Email</label>
								<div class="inputarea">													 
									 <p><s:property  value="company.alContactPersonEmail"></s:property></p>
								</div>
							</div>
						</fieldset>
						
						
					</div><!-- /End Form container-->
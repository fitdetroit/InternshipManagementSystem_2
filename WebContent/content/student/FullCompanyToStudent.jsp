<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>Company Profile</h2>
<div class="nav_butarea">
	<input type="submit" value="previous" class=""/>| <input type="submit" value="next" class=""/>
</div>
					<div class="form_container">
					<fieldset class="fieldset">
						<div class="contentrow">
						<div class="profile_image_container">
							<img src="assets/img/comp_logo_mit.jpg" class="profileimage" >
						</div>
						<div class="profile_header_container ">
							<h4><s:property  value="company.companyName"></s:property></h4>
							<p><s:property  value="company.companyAddress"></s:property></p>
							<p class="longtext">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae </p>
						</div>
						
						</div>
					</fieldset>
						
					<h3>Technologies</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <p>C#, Web Developing, php, java, .Net </p>
								</div>
							</div>
						</fieldset>
						
					<h3>Contact Information - Genaral Contacts</h3>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 
									 <p>0112334432 </p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Fax</label>
								<div class="inputarea">													 
									 <p>0112334432 </p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">E-mail</label>
								<div class="inputarea">													 
									 <p>info@mit.com </p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Web Site</label>
								<div class="inputarea">													 
									 <p>www.mitsrilanka.lk </p>
								</div>
							</div>
						</fieldset>
						
					</div><!-- /End Form container-->
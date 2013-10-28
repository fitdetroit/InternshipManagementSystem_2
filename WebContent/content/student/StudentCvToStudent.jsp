<%@ taglib uri="/struts-tags" prefix="s"%>
<h2>Curriculum Vitae</h2>

			<div class="cvcontainer">
			
			
			<div class="form_container">
					<fieldset class="fieldset">
						<div class="contentrow">
						<div class="profile_image_container">
							<img src="assets/img/images.jpg" alt="student name" class="profileimage" >
						</div>
						<div class="profile_header_container student_name">
							<h4><s:property  value="student.nameWithInitials"></s:property></h4>
							<hr>
							<p><s:property  value="student.permanentAddress"></s:property></p>
							
							<div class="longtext_container">
							<p class="longtext profile_subcontent"><label class="inputlabel">Index No </label><s:property  value="%{#session.userName}"></s:property></p>
							<p class="longtext profile_subcontent"><label class="inputlabel">Email </label><s:property  value="student.email"></s:property></p>
							<p class=" longtext profile_subcontent"><label class="inputlabel">Mobile </label> <s:property  value="student.mobile1"></s:property> / <s:property  value="student.mobile2"></s:property></p>
							</div>
							<div class="social_icon"></div>
						</div>
						
						</div>
					</fieldset>
					
		
					<div class="profile_sub_header"><img src="assets/img/biodata_icon.png"/><h3>Personal Deta</h3></div>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Gender</label>
								<div class="inputarea">													 
									 <p><s:property  value="student.gender" ></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Nationality</label>
								<div class="inputarea">													 
									 <p>-------------------------------</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Marital Status</label>
								<div class="inputarea">													 
									 <p><s:property  value="student.maritalStatus"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Religion</label>
								<div class="inputarea">													 
									 <p>--------------------------------</p>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Date of Birth</label>
								<div class="inputarea">													 
									 <p><s:property  value="student.dateOfBirth"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">National ID card No</label>
								<div class="inputarea">													 
									 <p>--------------------------------</p>
								</div>
							</div>
						</fieldset>
						<hr>
					
					<div class="profile_sub_header"><img src="assets/img/objectives.png"/><h3>Objectives</h3></div>
					<fieldset class="fieldset profile_content">
							<ul><li>To excel in a company where my knowledge and innovative capability can be fully utilize to serve the company and community with my full capacity.</li>
							<li>To excel in a company where my knowledge and innovative capability can be fully utilize to serve the company and community with my full capacity.</li>
							<li>To excel in a company where my knowledge and innovative capability can be fully utilize to serve the company and community with my full capacity.</li>
							<li>To excel in a company where my knowledge and innovative capability can be fully utilize to serve the company and community with my full capacity.</li>
							</ul>
						</fieldset>
					<hr>		
					<div class="profile_sub_header"><img src="assets/img/skills.png"/><h3>Skills & Expertise</h3></div>
					<fieldset class="fieldset profile_content">
					<p style="padding-left:10px;">Web apps, Ruby on Rails, PHP based CMSes (Drupal, Expression Engine, Wordpress, Joomla.etc) & Frameworks (CakePHP, CodeIgniter), Machine Learning & Big Data</p>
								
						
						</fieldset>
						
					<hr>	
					<div class="profile_sub_header"><img src="assets/img/experience.png"/><h3>Experience</h3></div>
					<fieldset class="fieldset profile_content">
							<ul>
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Vacancies Australia</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>	
							</ul>
						</fieldset>
					<hr>
					<div class="profile_sub_header"><img src="assets/img/projects_icon.png"/><h3>Projects</h3></div>
					<fieldset class="fieldset profile_content">
							<ul>
							<s:iterator value="student.studentComplitedProjects"  >
								<li><h4><s:property  value="projectTitle"></s:property> - <s:property  value="projectYear"></s:property></h4>
									<label><s:property  value="projectDescription"></s:property></label></li>
							</s:iterator>	
							</ul>
						</fieldset>
					<hr>	
						
					<div class="profile_sub_header"><img src="assets/img/education.png"/><h3>Education</h3></div>
					<fieldset class="fieldset profile_content">
							<ul>
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Vacancies Australia</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>	
							</ul>
						</fieldset>
						
					<hr>	
						
					<div class="profile_sub_header"><img src="assets/img/other_activities.png"/><h3>Other Activities</h3></div>
					<fieldset class="fieldset profile_content">
							<ul>
							<s:iterator value="student.studentOtherQulification"  >
								<li><h4>---------------------------------</h4>
									<label><s:property  value="description"></s:property></label></li>
							</s:iterator>
							</ul>
						</fieldset>
						
						
					</div><!-- /End Form container-->			
			</div><!-- CV container-->

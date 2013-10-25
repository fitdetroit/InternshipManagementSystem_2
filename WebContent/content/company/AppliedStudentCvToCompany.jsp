<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<h2>Student Curriculum Vitae</h2>
<div class="nav_butarea">
							<input type="submit" value="previous" class=""/>| <input type="submit" value="next" class=""/>
						</div>
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
							<p>Bsc(Hons) Information Technology </p>
							<p>Faculty of Information Technology, University of Moratuwa</p>
							
							<div class="longtext_container">
							<p class="longtext profile_subcontent"><label class="inputlabel">Reg. No </label>1132399N</p>
							<p class="longtext profile_subcontent"><label class="inputlabel">Email </label> shehandesilva@gmail.com </p>
							<p class=" longtext profile_subcontent"><label class="inputlabel">Mobile </label> 0771227338 / 07771122883</p>
							<p class=" longtext profile_subcontent"><label class="inputlabel">Address </label>New kandy rd jdjdhldsdjd.</p>
							</div>
							<div class="social_icon"></div>
						</div>
						
						</div>
					</fieldset>
					
		
					<div class="profile_sub_header"><img src="assets/img/biodata_icon.png"/><h3>Personal Deta</h3></div>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Name in Full</label>
								<div class="inputarea">													 
									 <p>sample name</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Gender</label>
								<div class="inputarea">													 
									 <p>Male</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Marital Status</label>
								<div class="inputarea">													 
									 <p>Notmarried</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Nationality</label>
								<div class="inputarea">													 
									 <p>Sri Lankan</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Religion</label>
								<div class="inputarea">													 
									 <p>Buddhism</p>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Date of Birth</label>
								<div class="inputarea">													 
									 <p>20.03.1990</p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">National ID card No</label>
								<div class="inputarea">													 
									 <p>982893879V</p>
								</div>
							</div>
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
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Vacancies Australia</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>
								<li><h4>Colombo Hotel Discounts</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label></li>	
							</ul>
						</fieldset>
					<hr>	
						
					<div class="profile_sub_header"><img src="assets/img/education.png"/><h3>Education</h3></div>
					<fieldset class="fieldset profile_content">
							<ul>
								<li><h4>Faculty of Information Technology - University of Moratuwa</h4>
									<label>Check & Compare Rates, Reviews. Up to 75% off. Book today!</label>
									<p style="padding-left: 20px;">GPA</p>
									<label>Level 1/ Semester 1 :4.2</label><label>Level 2/ Semester 1 :4.2</label><label>Level 3/ Semester 1 :4.2</label>
									</li>
								<li><h4>This is a sample School - 2015 A/L</h4>
										<table class="results_table" cellpadding="0" cellspacing="0">
											<tr class="tab_header"><td>Subject</td><td>Result</td></tr>
											<tr><td>Maths</td><td>Result</td></tr>
											<tr><td>Chemistry</td><td>Result</td></tr>
											<tr><td>Physics</td><td>Result</td></tr>
										</table>

</table>
</li>
										
							</ul>
						</fieldset>
						
					<hr>	
						
					<div class="profile_sub_header"><img src="assets/img/other_activities.png"/><h3>Extra Currycular Activities</h3></div>
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
						
						
					</div><!-- /End Form container-->			
			</div><!-- CV container-->
			<div class="form_container">
			<div class="inputarea action_bottons_area">													 
									 <input type="submit" value="Select" class="but_submit"/>
									 <input type="submit" value="Call Interview" class="but_change"/>
									 <input type="submit" value="Reject" class="but_create"/>
								</div>
								</div><!-- /End Form container-->
		

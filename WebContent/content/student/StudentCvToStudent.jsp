<%@ taglib uri="/struts-tags" prefix="s"%>
 <s:hidden label="Student User Name" name="studentUserName" value="%{#session.userName}"></s:hidden>
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
							<!--  <p>Bsc(Hons) Information Technology </p> -->
							
							<!-- <input type="text" disabled="disabled" class="autocomplete_field half input_disabled"  name="degreeTitle" value="<%= request.getAttribute("digreeTitle") %>"/> -->
							<label><s:property value="%{digreeTitle}"/></label>
							<p>Faculty of Information Technology, University of Moratuwa</p>
							
							<div class="longtext_container">
							  <p class="longtext profile_subcontent"><label class="inputlabel">Reg. No </label><s:property value="%{#session.userName}"/></p>
							   
							 </div>  
							 
							 <div class="longtext_container">
							  <p class="longtext profile_subcontent"><label class="inputlabel">Email </label><s:property  value="student.email"></s:property></p>
							   
							  
							 </div>
							 
							 <div class="longtext_container"> 
							  <p class=" longtext profile_subcontent"><label class="inputlabel">Mobile </label><s:property  value="student.mobile1"></s:property></p>
							   
							 </div>	
							 
							 <div class="longtext_container">
							  <p class=" longtext profile_subcontent"><label class="inputlabel">Address </label><s:property  value="student.permanentAddress"></s:property></p>
							   </div>
							
							<div class="social_icon"></div>
						</div>
						
						</div>
					</fieldset>
					
		
					<div class="profile_sub_header"><img src="assets/img/biodata_icon.png"/><h3>Personal Information</h3></div>
					<fieldset class="fieldset profile_content">
							<div class="inputrow">
								<label class="inputlabel">Name in Full</label>
								<div class="inputarea">	
									<p><s:property  value="student.nameInFull"></s:property></p>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Gender</label>
								<div class="inputarea">	
								<p><s:property  value="student.gender"></s:property></p>												 
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Marital Status</label>
								<div class="inputarea">	
								<p><s:property  value="student.maritalStatus"></s:property></p>												 
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
								<ul><li>
								<p class=" longtext profile_subcontent"><label class="inputlabel">Date of Birth</label><s:property  value="student.dateOfBirth"></s:property></p>
								</li></ul>					 
								
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
					
					
								<ul><li><p><s:property  value="student.otherQulification1"></s:property></p></li></ul>
					</fieldset>
						
					<hr>	
					<div class="profile_sub_header"><img src="assets/img/experience.png"/><h3>Experience</h3></div>
					
							<fieldset class="fieldset">
							<ul>
								<li><h4><s:property  value="student.companyName1"></s:property></h4></li></ul>
							<div class="inputrow">
								
								<div class="inputarea">	
								<p><s:property  value="student.briefDescriptoin1"></s:property></p>												 
								</div>
							</div>
							
							<ul>
								<li><h4><s:property  value="student.companyName2"></s:property></h4></li></ul>
							<div class="inputrow">
								
								<div class="inputarea">	
								<p><s:property  value="student.briefDescriptoin2"></s:property></p>												 
								</div>
							</div>
							
							<ul>
								<li><h4><s:property  value="student.companyName3"></s:property></h4></li></ul>
							<div class="inputrow">
								
								<div class="inputarea">	
								<p><s:property  value="student.briefDescriptoin3"></s:property></p>												 
								</div>
							</div>
							
							<ul>
								<li><h4><s:property  value="student.companyName4"></s:property></h4></li></ul>
							<div class="inputrow">
								
								<div class="inputarea">	
								<p><s:property  value="student.briefDescriptoin4"></s:property></p>												 
								</div>
							</div>
							
							<ul>
								<li><h4><s:property  value="student.companyName5"></s:property></h4></li></ul>
							<div class="inputrow">
								
								<div class="inputarea">	
								<p><s:property  value="student.briefDescriptoin5"></s:property></p>												 
								</div>
							</div>
							
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
								<li><h4>Faculty of Information Technology, University of Moratuwa</h4></li></ul>
							<div class="inputrow">
								<label class="inputlabel">Degree</label>
								<div class="inputarea">	
								<p><s:property  value="student.digreeTitle"></s:property></p>												 
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Acedemic Year</label>
								<div class="inputarea">	
								<p><s:property  value="student.yearOfAdmission"></s:property></p>												 
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">GPA</label>
								<div class="inputarea">	
								<p>	Semester 1:&nbsp;<s:property  value="student.gpaSemester1"></s:property>
									&nbsp;&nbsp;&nbsp;Semester 2:&nbsp;&nbsp;<s:property  value="student.gpaSemester2"></s:property>
									&nbsp;&nbsp;&nbsp; Semester 3:&nbsp;&nbsp;<s:property  value="student.gpaSemester3"></s:property></p>												 
								</div>
							</div><br>
							 
							 <ul>
								<li><h4>School</h4></li></ul>
							<div class="inputrow">
								<label class="inputlabel">Name  </label>
								<div class="inputarea">	
								<p><s:property  value="student.school"></s:property></p>												 
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">A/L results</label>
								<div class="inputarea">	
								<p><s:property  value="student.yearOfAl"></s:property></p>											 
								</div>
								</div>	
							
						<table class="results_table" cellpadding="0" cellspacing="0">
						<tr class="tab_header"><td><b>Subject</b></td><td><b>Result</b></td></tr>
						<tr><td><p><s:property  value="student.alSubject1"></s:property></p></td><td><p><s:property  value="student.alResult1"></s:property></p></td></tr>
						<tr><td><p><s:property  value="student.alSubject2"></s:property></p></td><td><p><s:property  value="student.alResult2"></s:property></p></td></tr>
						<tr><td><p><s:property  value="student.alSubject3"></s:property></p></td><td><p><s:property  value="student.alResult3"></s:property></p></td></tr>
						</table>

					
							
						</fieldset>	
					
						
					<hr>	
						
					<div class="profile_sub_header"><img src="assets/img/other_activities.png"/><h3>Extra Curricular Activities</h3></div>
					<fieldset class="fieldset profile_content">
					
					
								<ul><li><p><s:property  value="student.otherQulification1"></s:property></p></li></ul>
								<ul><li><p><s:property  value="student.otherQulification2"></s:property></p></li></ul>
							    <ul><li><p><s:property  value="student.otherQulification3"></s:property></p></li></ul>
							    <ul><li><p><s:property  value="student.otherQulification4"></s:property></p></li></ul>
							    <ul><li><p><s:property  value="student.otherQulification5"></s:property></p></li></ul>
					
							
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
		
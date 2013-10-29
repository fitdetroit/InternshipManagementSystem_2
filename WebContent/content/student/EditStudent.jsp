<%@ taglib uri="/struts-tags" prefix="s"%>
<s:form method="post" action="UpdateStudent" enctype="multipart/form-data" validate="true">
<s:hidden label="Student User Name" name="studentUserName" value="%{#session.userName}"></s:hidden>
<h2>Update Curriculum Vitae</h2>					
					<div class="form_container editprofile">
			
			
			<h3>Genaral Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Name In Full</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="companyName"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Name With Initials</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="companyName"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Gender</label>
								<div class="inputarea">													 
									
									 <select class="autocomplete_field half"><option>Male</option><option>Female</option></select>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Marital Status</label>
								<div class="inputarea">													 
									
									 <select class="autocomplete_field half"><option>Married</option><option>Unmarried</option></select>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Date Of birth</label>
								<div class="inputarea">													 
			
									<input type="text" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Select a Profile Picture</label>
								<div class="inputarea">													 
			
									<input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
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













<div>
<table>
<tr><td><h4 >Your personal Details</h4></td></tr>
<tr><td><s:form method="post" action="UpdateStudent" enctype="multipart/form-data" validate="true">
<tr><td><s:hidden label="Student User Name" name="studentUserName" value="%{#session.userName}"></s:hidden></td> </tr> 
<tr><td><s:textfield label="Name In Full" name="nameInFull" value="%{nameInFull}"></s:textfield></td> </tr>
<tr><td><s:textfield label="Name With Initials" name="nameWithInitials" value="%{nameWithInitials}"></s:textfield></td> </tr>
<tr><td><s:select list="{'Male','Female'}" label="Gender" name="gender" value="%{gender}"></s:select> </td></tr>
<tr><td><s:select list="{'single','married'}" label="maritalStatus" name="maritalStatus" value="%{maritalStatus}"></s:select> </td></tr>
<tr><td><s:textfield  label="Date of Birth"  name="dateOfBirth" value="%{dateOfBirth}"></s:textfield> </td></tr>
<tr><td><s:textfield label="Permanent Address" name="permanentAddress" value="%{permanentAddress}"></s:textfield></td> </tr>
<tr><td><s:textfield label="Mobile No 1" name="mobile1" value="%{mobile1}"></s:textfield></td> </tr>
<tr><td><s:textfield label="Mobile No 2" name="mobile2" value="%{mobile2}"></s:textfield></td> </tr>
<tr><td><s:textfield label="Telephone" name="telephone" value="%{telephone}"></s:textfield></td> </tr>
<tr><td><s:textfield label="Email" name="email" value="%{email}"></s:textfield></td> </tr>
<tr><td><s:textfield label="School" name="school" value="%{school}"></s:textfield></td> </tr>
<tr><td><s:textfield label="A/L Subject 1" name="alSubject1" value="%{alSubject1}"></s:textfield> <s:select list="{'A','B','C','S','F'}" label="Result" name="alResult1" value="%{alResult1}"></s:select> </td></tr>
<tr><td><s:textfield label="A/L Subject 2" name="alSubject2" value="%{alSubject2}"></s:textfield> <s:select list="{'A','B','C','S','F'}" label="Result" name="alResult2" value="%{alResult2}"></s:select> </td></tr>
<tr><td><s:textfield label="A/L Subject 3" name="alSubject3" value="%{alSubject3}"></s:textfield> <s:select list="{'A','B','C','S','F'}" label="Result" name="alResult3" value="%{alResult3}"></s:select> </td></tr>
<tr><td><s:select list="{'Information Technology','Information Technology and Management'}" label="Digree Title" name="digreeTitle" value="%{digreeTitle}"></s:select> </td></tr>
<tr><td><s:textfield  label="Year Of Admission"  name="yearOfAdmission" value="%{yearOfAdmission}"></s:textfield> </td></tr>
<tr><td><s:textfield  label="GPA semester 1"  name="gpaSemester1" value="%{gpaSemester1}"></s:textfield> </td></tr>
<tr><td><s:textfield  label="GPA semester 2"  name="gpaSemester2" value="%{gpaSemester2}"></s:textfield> </td></tr>
<tr><td><s:textfield  label="GPA semester 3"  name="gpaSemester3" value="%{gpaSemester3}"></s:textfield> </td></tr>
<tr ><td><s:textfield  label="p1 projectTitle"  name="projectTitle1" ></s:textfield> </td><td><s:textfield  label="p1 projectDescription"  name="projectDescription1" ></s:textfield> </td><td><s:textfield label="p1 rojectYear"  name="projectYear1" ></s:textfield> </td></tr>
<tr ><td><s:textfield  label="p2 projectTitle"  name="projectTitle2" ></s:textfield> </td><td><s:textfield  label="p2 projectDescription"  name="projectDescription2" ></s:textfield> </td><td><s:textfield label="p2 rojectYear"  name="projectYear2" ></s:textfield> </td></tr>
<tr><td><s:hidden label="project id 1" name="projectId1" value="%{projectId1}"></s:hidden></td> </tr> 
<tr><td><s:hidden label="project id 1" name="projectId2" value="%{projectId2}"></s:hidden></td> </tr> 
<tr><td><s:textfield  label="Qther qulification 1"  name="otherQulification1" value="%{otherQulification1}" ></s:textfield> </td></tr>
<tr><td><s:textfield  label="Qther qulification 2"  name="otherQulification2" value="%{otherQulification2}" ></s:textfield> </td></tr>
<tr><td><s:hidden label="Qther qulification 1 id" name="otherQulificationId1" value="%{otherQulificationId1}"></s:hidden></td> </tr> 
<tr><td><s:hidden label="Qther qulification 12 id" name="otherQulificationId2" value="%{otherQulificationId2}"></s:hidden></td> </tr>
<tr><td><s:password name="password" label="New password" value="%{password}"/></td></tr>
<tr><td><s:password name="conPassword" label="Conform New password" value="%{conPassword}"/></td></tr>
<tr><td><s:hidden label="Student Hidden password" name="password2" value="%{password2}"></s:hidden></td> </tr> 
<tr><td><br></td></tr>
<tr><td align="center"><s:submit label="Save" align="center"></s:submit></td></tr>

</s:form>
</td></tr>
</table></div>


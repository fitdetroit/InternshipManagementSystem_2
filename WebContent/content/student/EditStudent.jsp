<%@ taglib uri="/struts-tags" prefix="s"%>
<s:form method="post" action="UpdateStudent" enctype="multipart/form-data" validate="true">
<s:hidden label="Student User Name" name="studentUserName" value="%{#session.userName}"></s:hidden>
<h2>Update Curriculum Vitae</h2>					
					<div class="form_container editprofile">
			
			
			<h3>General Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Index No.</label>
								<div class="inputarea">
									<input type="text" value="114455K" disabled="disabled" class="autocomplete_field half input_disabled"  name="indexnumber"/>
									
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Name In Full</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half"  name="nameInFull"  value="<%= request.getAttribute("nameInFull") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Name With Initials</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half"  name="nameWithInitials" value="<%= request.getAttribute("nameWithInitials") %>"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Gender</label>
								<div class="inputarea">													 
									<select class="autocomplete_field small">
									 	<option selected> <%= request.getAttribute("gender")%></option>
									 	<option>Male</option>
									 	<option>Female</option>
									 	</select>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Marital Status</label>
								<div class="inputarea">													 
									
									 <select class="autocomplete_field small">
									 	<option selected> <%= request.getAttribute("maritalStatus")%></option>
									 	<option>Married</option>
									 	<option>Unmarried</option>
									 	</select>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Date Of birth</label>
								<div class="inputarea">													 
			
									<input type="text" class="autocomplete_field half" name="dateOfBirth" value="<%= request.getAttribute("dateOfBirth") %>"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Change Profile Picture</label>
								<div class="inputarea">													 
			
									<input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
								</div>
							</div>
						</fieldset>
					
						
					<h3>Contact Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Address</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="permanentAddress" value="<%= request.getAttribute("permanentAddress") %>" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Contact No.</label>
								<div class="inputarea">													 
									 <input type="text"class="autocomplete_field half" name="mobile1" value="<%= request.getAttribute("mobile1")%>" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Email Address</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half" name="email" value="<%= request.getAttribute("email")%>" />
								</div>
							</div>
						</fieldset>
							
					<h3>Skills & Expertise</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" placeholder="Type project name to find existing" ></textarea>
								</div>
							</div>
						</fieldset>	
						
						<h3>Experience</h3>
						<fieldset class="fieldset">
						<!-- ----------------------------------- -->
							<div class="inputrow">
								<label class="inputlabel">Title</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="otherQulification1" value="<%= request.getAttribute("otherQulification1")%>"  />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Description</label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" placeholder="Description" name="" value=""></textarea>
								</div>
							</div>
							
							<!-- ---------------------------------- -->
							
							
						</fieldset>
						
						<h3>Completed Projects</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Title</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Project title" class="autocomplete_field half"  name="projectTitle1" value="<%= request.getAttribute("projectTitle")%>"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Description</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half discription_area" placeholder="Description" name="projectDescription" value="<%= request.getAttribute("projectDescription")%>"/></textarea>
								</div>
							</div>
						</fieldset>


						<h3>Education</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Digree</label>
								<div class="inputarea">													 
									 <select class="autocomplete_field half"><option>Bsc(Hons) Information Technology</option>
									 	<option>Bsc(Hons) Information Technology & Management</option></select>
									 	&nbsp;Select Batch
									 	<select class="autocomplete_field small">
									 	<option selected> <%= request.getAttribute("yearOfAdmission")%></option>
									 	<option>11</option>
									 	<option>12</option>
									 	<option>13</option>
									 	<option>14</option>
									 	<option>15</option>
									 	<option>16</option>
									 	<option>17</option>
									 	<option>18</option>
									 	<option>19</option>
									 	<option>20</option>
									 	<option>21</option>	
									 </select>
									 
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">GPA</label>
								<div class="inputarea">													 
							
									Semester 1:
									 	<input type="text" class="autocomplete_field small" name="gpaSemester1" value="<%= request.getAttribute("gpaSemester1")%>"/>	
									Semester 2:
									 		<input type="text" class="autocomplete_field small" name="gpaSemester2" value="<%= request.getAttribute("gpaSemester2")%>"/>	
									Semester 3:
									 	<input type="text" class="autocomplete_field small" name="gpaSemester3" value="<%= request.getAttribute("gpaSemester3")%>"/> 	
								</div>							
							</div>
							
							
							
							
							
							<hr>
							<div class="inputrow">
								<label class="inputlabel">School</label>
								<div class="inputarea">													 
								 <input type="text" class="autocomplete_field half" name="school" value="<%= request.getAttribute("school")%>" />
								
									&nbsp;Select Year
									 	<select class="autocomplete_field small">
									 	<option>2005</option>
									 	<option selected></option>
									 	<option>2007</option>
									 	<option>2008</option>
									 	<option>2009</option>
									 	<option>2010</option>
									 	<option>2011</option>
									 	<option>2012</option>
									 	<option>2013</option>
									 	<option>2014</option>
									 	<option>2015</option>
									 	<option>2016</option>	
									 </select>
								</div>
														
								
							</div>
							
							
							<div class="inputrow">
								<label class="inputlabel">Your A/L Results</label>
								<div class="inputarea">													 
								
								<input type="text" class="autocomplete_field half" name="alSubject1" value="<%= request.getAttribute("alSubject1")%>"/>
							
									&nbsp;Select Result
									 	<select class="autocomplete_field small">
									 	<option selected><%= request.getAttribute("alResult1")%></option>
									 	<option>A</option>
									 	<option>B</option>
									 	<option>C</option>
									 	<option>S</option></select>
									 	
								</div>							
							</div>
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
			
									<input type="text" class="autocomplete_field half" name="alSubject2" value="<%= request.getAttribute("alSubject2")%>"/>
									
									 &nbsp;Select Result
									 	<select class="autocomplete_field small">
									 	<option selected><%= request.getAttribute("alResult2")%></option>
									 	<option>A</option>
									 	<option>B</option>
									 	<option>C</option>
									 	<option>S</option></select>
								</div>							
							</div>
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
			
									<input type="text" class="autocomplete_field half" name="alSubject3" value="<%= request.getAttribute("alSubject3")%>"/>
									
									 &nbsp;Select Result
									 	<select class="autocomplete_field small">
									 	<option selected><%= request.getAttribute("alResult3")%></option>
									 	<option>A</option>
									 	<option>B</option>
									 	<option>C</option>
									 	<option>S</option>	</select>	
								</div>							
							</div> 	
							
						</fieldset>
						
						
						<h3>Extracurricular  Activities</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Title</label>
								<div class="inputarea">													 
									 <input type="text" placeholder="Activity title" class="autocomplete_field half" name="extraCurricularTitle" value=""/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Discription</label>
								<div class="inputarea">													 
									 <textarea class="autocomplete_field half discription_area" placeholder="Description" name="extraCurricularDescription" value="extraCurricularDescription"></textarea>
								</div>
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
<s:hidden label="Student User Name" name="studentUserName" value="%{#session.userName}"></s:hidden>
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


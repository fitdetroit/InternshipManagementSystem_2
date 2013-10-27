<%@ taglib uri="/struts-tags" prefix="s"%>
 <style>
.profile_container{ background:#FFFFFF; padding:10px;}

.address { margin-top:-15px; font-weight:bold; color:#666666} 
.page_title{ background:rgba(227, 252, 221, 1); margin-top:10px; padding:5px 0 0 5px; height:30px;border: 1px solid #C2F0C2;} 
.profile_body { height:100px; margin:0 auto 0 auto; width: 980px;}
.td_header{ width:200px; font-weight: bold;}
.td_body p{ margin-top:0; margin-bottom:0;}

.header_profile {color:#298B1C; margin: 0 auto;font-family: 'MerriweatherSans-Bold'; font-size:22px;}
.profile_general{ height:150px; padding-top:10px;}
.pro_img_container{ width:250px;float:left; overflow-y: auto}
.pro_disc_container{ float:left; width:720px}
.profile_container .profile_name{ color:#333333; background:none; border:none; font-size:33px; font-weight:bold; font-family: 'segoeuib-Bold'; margin: 0 auto auto -1px;}
.pro_disc_container .address{ color:#666666; font-size:15px; margin:10px auto auto 10px;}
.pro_disc_container hr { margin:10px;}
.pro_disc_container .comp_discription{color: #666666; margin: 10px; font-size: 14px;}

table.table_info{ border:none; margin-left:10px;}

table.table_info th{ text-align:left; color:#3960A5; background: #F5F6F7; font-weight:600}
table.table_info td{ padding:2px 0 2px 0}
table.table_info td.col_1{ width:150px; text-align:right; color: #333333; font-weight:600; font-size:15px; padding-right:10px;}
table.table_info td.col_2{ width:10px; text-align:right; vertical-align:top}
table.table_info td.col_3{ width:500px; font-size:14px; vertical-align:top}
table.table_info td.col_3 p { padding:0; margin:0;vertical-align:top;padding-left: 10px;}



</style>

  <div class="page_title"><h2 class="header_profile">Student Profile</h2></div>
  <div class="nav"><a href="#">Previous</a> | <a href="#">Next</a></div>
    <div class="profile_container">
		<div class="profile_general">
			<div class="pro_img_container"><img class="profile_image" src="assets/img/st_profileimg.jpg" alt="company name" width="250"/></div>
			<div class="pro_disc_container">
				<h3 class="profile_name">Charith Hewage</h3>
				<p class="address">No.44, New Kandy Road Malabe, Sri Lanka.</p>
				<hr>	
							<table cellpadding="0" cellspacing="0" class="table_info">
			<th colspan="3">Genaral Information</th>
			<tr><td class="col_1">Name in Full</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Hewa Wathudurage Charith Lakmina</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Gender</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Male</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Nationality</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Sri Lankan</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Date of Birth</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>20.07.1989</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Marital State</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Single</p></td>
			</tr>
			
			
			<th colspan="3">Objectives</th>
			<tr><td class="col_3" colspan="3">
					<ul><li><p>Freelancer.com is the world’s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide. </p></li>
					<li><p>Freelancer.com is the world’s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide. </p></li>
					
					</ul>
				</td>
			
			</tr>
			
			
			<th colspan="3">Educational Qualifications</th>
			<tr><td colspan="3" style="padding-left:10px; font-weight:600; color:#298B1C">GCE O/L</td></tr>
			<tr><td class="col_1">Mathematics</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td>
			<tr><td class="col_1">Science</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">Buddhism</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">English Language</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">First Language</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">Social Studies</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">Health and Physical Science</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
				
			
			<tr><td colspan="3" style="padding-left:10px; font-weight:600; color:#298B1C">GCE O/L</td></tr>
			<tr><td class="col_1">Mathematics</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td>
			<tr><td class="col_1">Chemestry</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>
			<tr><td class="col_1">Physics</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>A</p></td></tr>

			
			<th colspan="3">Skills</th>
			<tr><td colspan="3" style="padding-left:10px; font-weight:600; color:#298B1C">Computer Skills</td></tr>
			<tr><td class="col_1">ProgrammingLanguages</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Java, [C, C++]</p></td>
			</tr>
			
			<tr><td class="col_1">Web Technologies</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>PHP, CSS, JavaScript, Ajax</p></td>
			</tr>
			
			<th colspan="3">Work Experience</th>
			<tr><td colspan="3" style="padding-left:10px; font-weight:600; color:#298B1C">Faculty of Information Technology</td></tr>
			<tr><td class="col_3" colspan="3"><p>Freelancer.com is the worldâ€™s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide.</p></td>
			
			</tr>
			
			<tr><td colspan="3" style="padding-left:10px; font-weight:600; color:#298B1C">Faculty of Information Technology</td></tr>
			<tr><td class="col_3" colspan="3"><p>Freelancer.com is the worldâ€™s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide.</p></td>
			</tr>
			
			
			
			<th colspan="3">Contact Information</th>
			<tr><td class="col_1">Telephone</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>+9411883399</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Mobile</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>+9411993300</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">E-mail</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>name@gmail.com</p></td>
			</tr>
			</table>
				
			</div>
		</div>
		


		</div>











<!-- 




<table width="100%" border="0" style="border-collapse:collapse; height: 1346px; border-top-style: none; border-top-color: inherit; border-top-width: 0px;">
	<tr>
		<td style="width: 200px; height: 1331px;" valign="top">
			<table style="border-right-color:black;border-right-style:outset">
				<tr>
					<td style="width: 200px; height: 250px;"><s:url id="url" action="GetImageStudentToCompany">
            <s:param name="userName"><s:property value="studentUserName"/> </s:param>
                </s:url>
                <img src="<s:property value='#url'/>"  width="200px" height="250px"/></td>
				</tr>
				<tr>
					<td class="tags" style="width: 217px"><p><b><br/><br/>
						<a href="#personal">Personal Information</a><br/><br/>						
						<a href="#edu">Education Qualifications</a><br/><br/>
						<a href="#workingExperience">Working Experience</a><br/><br/>
						<a href="#projects">Projects</a><br/><br/>
						<a href="#uni">University Details</a></b></p></td>
				</tr>
				<tr><td style="height:883px"></td></tr>

			</table>
		</td>
		<td style="height: 1331px" valign="top">
			<table width="100%" border="0">
				<tr>
					<td colspan="2" style="width:100%;"><s:property  value="student.nameWithInitials"></s:property></td>
				</tr>
				<tr><td style="height: 50px"></td></tr>
				<tr>
					<td colspan="2" class="ankers"><a name="personal"></a><b>Personal Informations</b></td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										
										<tr><td style="width:15%"><i>Name</i></td><td><s:property  value="student.nameInFull"></s:property></td></tr>
										<tr><td><i>Gender</i></td><td><s:property  value="student.gender" ></s:property></td></tr>
										<tr><td><i>Marital Status</i></td><td><s:property  value="student.maritalStatus"></s:property></td></tr>
										<tr><td><i>Date Of Birth</i></td><td><s:property  value="student.dateOfBirth"></s:property></td></tr>
										<tr><td><i>Address</i></td><td><s:property  value="student.permanentAddress"></s:property></td></tr>
										<tr><td><i>Mobile 1</i></td><td><s:property  value="student.mobile1"></s:property></td></tr>
										<tr><td><i>Mobile 2</i></td><td><s:property  value="student.mobile2"></s:property></td></tr>
										<tr><td><i>Telephone</i></td><td><s:property  value="student.telephone"></s:property></td></tr>										
										<tr><td><i>E-mail</i></td><td><s:property  value="student.email"></s:property></td></tr>
										
										</table></td>
				</tr>

				<tr><td style="height:20px"></td></tr>
				<tr>
					<td colspan="2" class="ankers"><a name="edu"></a><b>Educatin Qualifications</b></td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										
										<tr><td></td></tr>
										<tr><td colspan="3"><i>1. G.C.E.Advanced Level<br/></i></td></tr>														
										<tr><td style="width:5%"></td><td><s:property  value="student.alSubject1"></s:property></td><td style="width:50%;text-align:center"><s:property  value="student.alResult1" ></s:property></td></tr>
										<tr><td style="width:5%"></td><td><s:property  value="student.alSubject2"></s:property></td><td style="width:50%;text-align:center"><s:property  value="student.alResult2" ></s:property></td></tr>
										<tr><td style="width:5%"></td><td><s:property  value="student.alSubject3"></s:property></td><td style="width:50%;text-align:center"><s:property  value="student.alResult3" ></s:property></td></tr>
										<tr><td></td></tr>
										<tr><td colspan="3">2.An undergraduate of B.Sc. in <s:property  value="student.digreeTitle" ></s:property> Year of Admission:<s:property  value="student.yearOfAdmission"></s:property></td></tr>
										<tr><td colspan="3"><i>Current GPA<br/></i></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 1:</td><td style="width:50%;text-align:center"><s:property  value="student.gpaSemester1"></s:property></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 2:</td><td style="width:50%;text-align:center"><s:property  value="student.gpaSemester2"></s:property></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 3:</td><td style="width:50%;text-align:center"><s:property  value="student.gpaSemester3"></s:property></td></tr>
										<tr><td></td></tr>
										</table></td>
				</tr>
				<tr><td style="height:20px"></td></tr>
				<tr>
					<td colspan="2" class="ankers"><a name="workingExperience"></a><b>Other qulification:</b></td>
				</tr>
			   <s:iterator value="student.studentOtherQulification"  >
				<tr>
				
					<td style="width:5%"></td>
					
					<td class="content1">
					
					<table style="text-align:left" width="100%">
					
										<tr><td><s:property  value="description"></s:property></td></tr>
										
										</table></td>
										
				</tr>
				</s:iterator>
				<tr><td style="height:20px"></td></tr>
				<tr>
					<td colspan="2" class="ankers"><a name="projects"></a><b>Projects</b></td>
				</tr>
			<s:iterator value="student.studentComplitedProjects"  >
				<tr>
				
					<td style="width:5%"></td>
					
					<td class="content1">
					
					<table style="text-align:left" width="100%">
					
										<tr><td><s:property  value="projectTitle"></s:property></td></tr>
										<tr><td><s:property  value="projectDescription"></s:property></td></tr>
										<tr><td><s:property  value="projectYear"></s:property></td></tr>
										
										</table></td>
										
				</tr>
				</s:iterator>
				<tr><td style="height:20px"></td></tr>
				<tr>
					<td colspan="2" class="ankers"><a name="uni"></a><b>University Details</b></td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										<tr><td style="width:15%"><i>University</i></td><td>University of Moratuwa, Moratuwa, Sri Lanka</td></tr>
										<tr><td></td><td></td></tr>
										<tr><td><i>Faculty</i></td><td>Faculty of Information Technology</td></tr>
										<tr><td></td><td></td></tr>
										<tr><td><i>Course</i></td><td><s:property  value="digreeTitle" ></s:property></td></tr>
										<tr><td></td><td></td></tr>

										</table></td>
				</tr>
				<tr style="height:100px"></tr>
			</table>
		</td>
	</tr>

</table>
-->

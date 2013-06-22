<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title>Curriculum Vitae</title>
<style type="text/css">
	.heading
	{
	color:silver;
	font-family:Cambria;
	font-size:30px;
	}
	.ldm
	{
	font-family:Cambria;
	color:gray;
	text-align:right;
	}
	.tags
	{
	color:white;
	font-family:Cambria;
	font-size:15px;
	background-color:#3E3E3E;
	text-align:right;
	}
	.ankers
	{
	font-family:Cambria;
	font-style:italic;
	font-size:20px;
	color:orange;
	}
	.content1
	{
	color:black;
	font-family:Calibri;
	font-size:15px;
	text-align:left;
	background-color:#808080;
	}
	a:link{color:white;}
	a:visited{color:white;}
	a:hover{color:yellow;}
	a:active{color:gray;}
</style>
</head>

<body bgcolor="#333333" >
<s:iterator value="list" var="student" >
<table width="100%" border="0" style="border-collapse:collapse; height: 1346px; border-top-style: none; border-top-color: inherit; border-top-width: 0px;">
	<tr>
		<td class="heading" colspan="3" style="background-image:url('picture1.jpg');background-position:left;background-repeat:inherit;">Curriculum Vitae </td>
		<td><h3 align="right" style="color:white">Welcome! <s:property value="%{#session.userName}"/> <a href="<s:url action="../LogOut"/>">(logout)</a></h3></td>
	</tr>

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
					<td colspan="2" style="background-color:black;width:100%;font-family:Cambria;font-size:60px;color:teal"><s:property  value="nameWithInitials"></s:property></td>
				</tr>
				<tr><td style="height: 50px"></td></tr>
				<tr style="background-color:#333333">
					<td colspan="2" class="ankers"><a name="personal"></a>Personal Informations</td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										
										<tr><td style="width:15%"><i>Name</i></td><td><s:property  value="nameInFull"></s:property></td></tr>
										<tr><td><i>Gender</i></td><td><s:property  value="gender" ></s:property></td></tr>
										<tr><td><i>Marital Status</i></td><td><s:property  value="maritalStatus"></s:property></td></tr>
										<tr><td><i>Date Of Birth</i></td><td><s:property  value="dateOfBirth"></s:property></td></tr>
										<tr><td><i>Address</i></td><td><s:property  value="permanentAddress"></s:property></td></tr>
										<tr><td><i>Mobile 1</i></td><td><s:property  value="mobile1"></s:property></td></tr>
										<tr><td><i>Mobile 2</i></td><td><s:property  value="mobile2"></s:property></td></tr>
										<tr><td><i>Telephone</i></td><td><s:property  value="telephone"></s:property></td></tr>										
										<tr><td><i>E-mail</i></td><td><s:property  value="email"></s:property></td></tr>
										
										</table></td>
				</tr>

				<tr><td style="height:20px"></td></tr>
				<tr style="background-color:#333333">
					<td colspan="2" class="ankers"><a name="edu"></a>Educatin Qualifications</td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										
										<tr><td></td></tr>
										<tr><td colspan="3"><i>1. G.C.E.Advanced Level<br/></i></td></tr>														
										<tr><td style="width:5%"></td><td><s:property  value="alSubject1"></s:property></td><td style="width:50%;text-align:center"><s:property  value="alResult1" ></s:property></td></tr>
										<tr><td style="width:5%"></td><td><s:property  value="alSubject2"></s:property></td><td style="width:50%;text-align:center"><s:property  value="alResult2" ></s:property></td></tr>
										<tr><td style="width:5%"></td><td><s:property  value="alSubject3"></s:property></td><td style="width:50%;text-align:center"><s:property  value="alResult3" ></s:property></td></tr>
										<tr><td></td></tr>
										<tr><td colspan="3">2.An undergraduate of B.Sc. in <s:property  value="digreeTitle" ></s:property> Year of Admission:<s:property  value="yearOfAdmission"></s:property></td></tr>
										<tr><td colspan="3"><i>Current GPA<br/></i></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 1:</td><td style="width:50%;text-align:center"><s:property  value="gpaSemester1"></s:property></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 2:</td><td style="width:50%;text-align:center"><s:property  value="gpaSemester2"></s:property></td></tr>
										<tr><td style="width:5%"></td><td>GPA semester 3:</td><td style="width:50%;text-align:center"><s:property  value="gpaSemester3"></s:property></td></tr>
										<tr><td></td></tr>
										</table></td>
				</tr>
				<tr><td style="height:20px"></td></tr>
				<tr style="background-color:#333333">
					<td colspan="2" class="ankers"><a name="workingExperience"></a>Working Experience:</td>
				</tr>
				<tr>
					<td style="width:5%"></td>
					<td class="content1"><table style="text-align:left" width="100%">
										<tr><td><s:property  value="workingExperience"></s:property></td></tr>
										</table></td>
				</tr>
				<tr><td style="height:20px"></td></tr>
				<tr style="background-color:#333333">
					<td colspan="2" class="ankers"><a name="projects"></a>Projects</td>
				</tr>
			<s:iterator value="studentComplitedProjects"  >
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
				<tr style="background-color:#333333">
					<td colspan="2" class="ankers"><a name="uni"></a>University Details</td>
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
</s:iterator>
</body>

</html>

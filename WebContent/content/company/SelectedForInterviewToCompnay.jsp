<%@ taglib uri="/struts-tags" prefix="s"%>

<h2>Selected Students for Interviews</h2>
						
					
<div class="form_container">

<table cellpadding="0" cellspacing="0" class="tabel_container">
							<thead>
								<tr class="theader">
									<th>No</th>
									<th>Personal Detail</th>
									<th>Skills & Expertise</th>
								
							  </tr>
							</thead>
							<tbody>
							
								<tr class="tbody"><td>&nbsp;</td>
									<td>
									<p class="st_name">Charith Hewalge</p>
									<p>44, Wadiyagoda, Ranna.44, Wadiyagoda, Ranna.</p>
									<p>Email : sdfsdf@gmail.com | Mobile : 07188998899,0777337788</p>
									<p><span>Male</span><span class="birthday">Birth day: 1989.07.20</span></p>
									</td>
									
									<td>
									<p>Web apps, Ruby on Rails, PHP based CMSes (Drupal, Expression Engine, Wordpress, Joomla.etc) & Frameworks (CakePHP, CodeIgniter), Machine Learning & Big Data</p>
									<div class="inputarea action_bottons_area">
										<input type="submit" value="View Profile" class="action_bottons view_button"/>
									<input type="submit" value="Select" class=" action_bottons select_button" />
									<input type="submit" value="Reject" class="action_bottons reject_button" />
									</div>
									</td>
									
								
									
								</tr><!-- /End tr content-->
								
								
							</tbody>
						
						</table>				
						
</div><!-- /End Form container-->






















<div>
<h2 align="center">Selected Students to Interview </h2>
<table border="1" align="center">
<tr >
    <th width="220">Name In Full</th>
    <th width="220">Name With Initials</th>
    <th width="50">Gender</th>
    <th width="100">Mobile No 1</th>
    <th width="100">Mobile No 2</th>
    <th width="100">Telephone</th>
    <th width="100">Email</th>
    <th width="100">Year of Admission</th>
    <th width="150">View full profile</th>
    <th width="150">Select for the Internship</th>
    <th width="220">Send Mail to student to Inform</th>


    
    
    
</tr>
<s:iterator value="list" var="student">
    <tr>
        <td><s:property value="nameInFull"/> </td>
        <td><s:property value="nameWithInitials"/> </td>
        <td><s:property value="gender"/> </td>
        <td><s:property value="mobile1"/> </td>
        <td><s:property value="mobile2"/> </td>
        <td><s:property value="telephone"/></td>
         <td><s:property value="email"/></td>
        <td><s:property value="yearOfAdmission"/></td>
        
        <td><s:form method="post" action="StudentCvToCompany" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="studentUserName" value="%{studentUserName}"></s:hidden></td>        
        <td><s:submit value="View" ></s:submit></td> 
        </s:form></td>
        
         <td>
         <s:if test="%{selected==true}">
         <s:form method="post" action="UpdateStateToSelected" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="studentUserName" value="%{studentUserName}"></s:hidden></td> 
          
       <td><s:submit value="select" disabled="true"></s:submit><p>(this student already selected)</p></td>      
        
        </s:form>
        </s:if>
        <s:else>
                
         <s:form method="post" action="UpdateStateToSelected" enctype="multipart/form-data" validate="true">
        <td><s:hidden label="Company User Name" name="studentUserName" value="%{studentUserName}"></s:hidden></td> 
          
       <td><s:submit value="select" ></s:submit></td> 
       </s:form>
        </s:else>
        </td>

  
    </tr>
</s:iterator>
</table>
</div>

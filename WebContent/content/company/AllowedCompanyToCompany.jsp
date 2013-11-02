<%@ taglib uri="/struts-tags" prefix="s"%>

<h2>Registered Companies</h2>
						
					
<div class="form_container">

<table cellpadding="0" cellspacing="0" class="tabel_container">
							<thead>
								<tr class="theader">
									<th>No</th>
									<th>General Detail</th>
									<th>Description</th>
								
							  </tr>
							</thead>
							<tbody>
							<s:iterator value="list" var="student">
								<tr class="tbody"><td>&nbsp;</td>
									<td>
									<p class="st_name"><s:property value="companyName"/></p>
									<p><s:property value="companyAddress"/></p>
									<p>Website : <s:property value="companyWeb"/> | Email : 07188998899,0777337788</p>
									<p>Tel: <s:property value="companyTelephone"/></p>
									</td>
									
									<td>
									<p>Web apps, Ruby on Rails, PHP based CMSes (Drupal, Expression Engine, Wordpress, Joomla.etc) & Frameworks (CakePHP, CodeIgniter), Machine Learning & Big Data</p>
									
									<div class="inputarea action_bottons_area">
									<s:form method="post" action="FullCompanyProfileToCompany" enctype="multipart/form-data" validate="true">
									<s:hidden label="Company User Name" name="companyUserName" value="%{companyUserName}"></s:hidden>
									<input type="submit" value="View Profile" class="action_bottons view_button"/>
									</s:form>
									</div>
									</td>
									
								
									
								</tr><!-- /End tr content-->
								</s:iterator>
								
							</tbody>
						
						</table>				
						
</div><!-- /End Form container-->
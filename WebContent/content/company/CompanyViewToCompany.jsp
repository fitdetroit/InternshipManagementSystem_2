<%@ taglib uri="/struts-tags" prefix="s"%>
<style>
.profile_container{ background:#FFFFFF; padding:10px;}
.page_title{ background:rgba(227, 252, 221, 1); margin-top:10px; padding:5px 0 0 5px; height:30px;border: 1px solid #C2F0C2;} 
.header_profile {color:#298B1C; margin: 0 auto;font-family: 'MerriweatherSans-Bold'; font-size:22px;}
.profile_general{ height:150px; padding-top:10px;}
.pro_img_container{ width:250px; height:150px; float:left; overflow:hidden}
.pro_disc_container{ height:150px; float:left; width:720px}
.profile_container .profile_name{ color:#333333; background:none; border:none; font-size:33px; font-weight:bold; font-family: 'segoeuib-Bold'; margin: 0 auto auto -1px;}
.pro_disc_container .address{ color:#666666; font-size:15px; margin:10px auto auto 10px;}
.pro_disc_container hr { margin:10px;}
.pro_disc_container .comp_discription{color: #666666; margin: 10px; font-size: 14px;}
.profile_other{}
.profile_other table.table_info{ border:none}
.profile_other table.table_info th{ text-align:left; color:#3960A5; font-weight:600}
.profile_other table.table_info th ul{ list-style-type:none; padding:0}
.profile_other table.table_info th ul li{ float:left; margin-right: 30px;}
.profile_other table.table_info th ul li.sub_header{color: #48A038;}
.profile_other table.table_info td.col_1{ width:240px; text-align:right; color: #333333; font-weight:600; font-size:15px; padding-right:10px;}
.profile_other table.table_info td.col_2{ width:10px; text-align:right; vertical-align:top}
.profile_other table.table_info td.col_3{ width:700px; font-size:14px;}
.profile_other table.table_info td.col_3 p { padding:0; margin:0}
</style>

	<div class="page_title"><h2 class="header_profile">Company Information</h2></div>
    <div class="profile_container">
		
		<div class="profile_general">
			<div class="pro_img_container"><img class="profile_image" src="assets/img/comp_logo_mit.jpg" alt="company name" width="250"/></div>
			<div class="pro_disc_container">
				<h3 class="profile_name"><s:property  value="company.companyName"></s:property></h3>
				<p class="address"><s:property  value="company.companyAddress"></s:property></p>
				<hr>	
				<p class="comp_discription">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s
standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to 
make a type</p>
			</div>
		</div>
		
		<div class="profile_other">
			<table cellpadding="0" cellspacing="0" class="table_info">
			<th>Genaral Information</th>
			<tr><td class="col_1">Username</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="%{#session.userName}"></s:property></p></td>
			</tr>
			<tr><td class="col_1">No of Vacancies</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="company.noOfVacancies"></s:property></p></td>
			</tr>
			
			<th>Related Fields</th>
			<tr><td class="col_1">Web Developing</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Ruby, Phython, PHP, Drupal, Wordpress</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Graphic Designing</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>Adobe Fireworks, Adobe Photoshop</p>
			</tr>
			
			<th colspan="3"><ul><li>Contact Information</li><li class="sub_header">Genaral Contacts</li></ul></th>
			<tr><td class="col_1">Telephone</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="company.companyTelephone" ></s:property></p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Fax</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>+9411993300</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">E-mail</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>info@milenniumit.com</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Web</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="company.companyWeb"></s:property></p></td>
			</tr>
			<th colspan="3"><ul><li>Contact Information</li><li class="sub_header">Contact Person</li></ul></th>
			
			
			<tr><td class="col_1"><tr><td class="col_1">Name</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="company.contactPerson"></s:property></p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Contact Number</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>+94772288337</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Email</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>sarath@mit.com</p></td>
			</tr>
			
				<th colspan="3"><ul><li>Contact Information</li><li class="sub_header">Contact Person</li></ul></th>
			
			
			<tr><td class="col_1"><tr><td class="col_1">Name</td>
				<td class="col_2">:</td>
				<td class="col_3"><p><s:property  value="company.contactPerson"></s:property></p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Contact Number</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>+94772288337</p></td>
			</tr>
			<tr><td class="col_1"><tr><td class="col_1">Email</td>
				<td class="col_2">:</td>
				<td class="col_3"><p>sarath@mit.com</p></td>
			</tr>
			
			
			</table>
				
			</div>
		</div>



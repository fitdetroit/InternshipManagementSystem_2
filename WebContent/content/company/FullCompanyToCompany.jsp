<style>
.profile_container{ background:#FFFFFF;}
.profile_grid_left{ width:200px; float:left; margin:0 5px auto 10px; padding:0}
.comp_logo_container{ widows:200px;}

.profile_grid_right{ width:770px; height:200px; float:left; margin:0 10px auto 5px;}
.profile_grid_right h3{ margin-left:0; margin-top: 0px; padding-top:5px; color:#222222; background:#9FF2C2; border:#7DF182; font-size: 1.3em; height:30px;}
.profile_grid_right p{ margin-left:10px;}
.address { margin-top:-15px; font-weight:bold; color:#666666} 

.profile_body { height:100px; margin:0 auto 0 auto; width: 980px;}
.td_header{ width:200px; font-weight: bold;}
.td_body p{ margin-top:0; margin-bottom:0;}

</style>

    <div class="profile_container">
		<div class="profile_grid_left">
			<div class="comp_logo_container"><img src="assets/img/logo150X150.png" width="200" height="200"/></div>
		</div>
		
		<div class="profile_grid_right">
			<h3><s:property  value="company.companyName"></s:property></h3>
			<p class="address"><s:property  value="company.companyAddress"></s:property></p>
			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s
standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to 
make a type</p>
		</div>
		

		<table cellpadding="0" cellspacing="0" class="profile_body">
			<tr valign="top"><td class="td_header">Specification</td>
				<td class="td_body"><p>Web Developing</p><p>Mobile Development</p></td>
				<td class="td_body"><p>Graphic Design</p><p>Addvertiesment</p></td>
				<td class="td_body">Contact Details</td>
				
			</tr>
			
			<tr valign="top"><td class="td_header">Contact Information</td>
				<td class="td_body" colspan="3">
					<p><b>Company Telephone</b></p>
					<p><s:property  value="company.companyTelephone" ></s:property></p>
					
					<p><b>Web Site</b></p>
					<p><s:property  value="company.companyWeb"></s:property></p>
				
				</td>	
			</tr>
		</table>

		
    </div>
<%@ taglib uri="/struts-tags" prefix="s"%>
<style>
.page_title{ background: #E4FCEA; border: 1px solid #C6E5C9; height:30px; margin-top:10px;}
.header_profile{ margin:0; padding:0;color: #298B1C; font-family: 'MerriweatherSans-Bold'; margin-left: 10px; padding-top: 2px; }

.message_container{ position:relative; min-height:465px; margin:10px auto; padding:10px;}
.side_container ul.message_sum, .side_container ul.sub_parts{ list-style-type:none; padding:0; margin:0;}
.message_container table{ width:980px}

.message_container table tr:nth-child(odd){ background:#F3F3F3; border-bottom:1px solid #CCCCCC; border-top:1px solid #CCCCCC}
.message_container table td{ font-size:14px; padding-left:5px; cursor:pointer; }
.message_container table td:nth-child(1){ font-weight:600; width:800px; color:#333333}
.message_container table tr{ height:40px}
.message_container table tr:hover{ background:#E0E0E0}
.container_upper{ margin-bottom:40px; }
.container_upper .nav_buttons{}
.create_new{ height:30px; width:100px; background:#AD181D; color:#FFFFFF; font-weight:bold; float:left; text-align:center; cursor:pointer}
.container_upper label{ font-size:14px; font-weight:600}
.nav_form{ float:right}
</style>

<div class="page_title"><h2 class="header_profile">Messages</h2></div>
    <div class="profile_container">
		<div class="message_container">
		<div class="container_upper">
		<a href="<s:url action='CreateNewMsgCompany'/>"><label class="create_new">Create New</label></a>
		<form class="nav_form">
		<label>1 - 20 /30</label>
		<input class="nav_buttons" type="submit" value="back"/>
		<input class="nav_buttons" type="submit" value="Next"/>
		</form>
		</div>
		
		<table cellpadding="0" cellspacing="0">
			<tr>
				<td><a href="<s:url action='InboxCompany'/>">Latest projects and contests matching your skills</a></td>
				<td>12.01.2013</td>
				<td>12:10 PM</td>
			</tr>
			<tr>
				<td>Latest projects and contests matching your skills</td>
				<td>12.01.2013</td>
				<td>12:10 PM</td>
			</tr>
			<tr>
				<td>Latest projects and contests matching your skills</td>
				<td>12.01.2013</td>
				<td>12:10 PM</td>
			</tr>
			<tr>
				<td>Latest projects and contests matching your skills</td>
				<td>12.01.2013</td>
				<td>12:10 PM</td>
			</tr>
			<tr>
				<td>Latest projects and contests matching your skills</td>
				<td>12.01.2013</td>
				<td>12:10 PM</td>
			</tr>
		
		</table>
		</div>
		

		</div>

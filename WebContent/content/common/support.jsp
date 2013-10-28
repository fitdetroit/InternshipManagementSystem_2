 <%@ taglib uri="/struts-tags" prefix="s"%>  
   <style>
.page_title{ background:rgba(227, 252, 221, 1); margin-top:10px; padding:5px 0 0 5px; border: 1px solid #C2F0C2;} 
.profile_container{ font-size:14px; padding:10px;}
.header_profile {color:#298B1C; margin: 0 auto;font-family: 'MerriweatherSans-Bold'; font-size:22px;}
table.element_container th{ text-align:left; color:#333333; font-weight:600}
table.element_container td{ padding-left:30px; width:800px;}
.msg_inputs, .msg_content{ width:500px; height:25px; border:1px solid #CCCCCC; margin:10px auto 10px 0; padding:5px; font-size:15px}
.msg_content{ min-height:150px; max-width:500px; max-height:500px;}
.but_submit{background: #003399; width: 100px; height: 35px; -webkit-border-radius: 3px; border-radius: 3px; border: 1px solid #0033CC; color: #FFFFFF; float:right;margin-right:288px;}
.but_submit:hover{ background:#0000FF}
.support label{color:#FF0000; margin-left: 10px;}
</style>
   
    <div class="page_title"><h2 class="header_profile">Support</h2>
		<p>Freelancer.com is the world’s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide. Advertise to millions of professionals and business decision makers everyday!</p></div>
    <div class="profile_container">
		<div class="support">
		<form method="post" action="Support" enctype="multipart/form-data">
			<table cellpadding="0" cellspacing="0" class="element_container">
			<th>Contact Person</th>
			<tr><td>Mrs: K.H.Kodikara<br>Faculty of Information Technology<br>University of Moratuwa</td></tr>
			<tr><td>Contact No +9412199338</td></tr>
			<tr><td>E - mail kkk@uom.lk</td></tr>
			</table>
			
			<table cellpadding="0" cellspacing="0" class="element_container">
			<th>Send a Message</th>
			<tr><td><input type="text" class="msg_inputs" name="senderEmail" placeholder="Enter your email address.."/></td></tr>
			<tr><td><input type="text" class="msg_inputs" name="senderUserName" placeholder="Enter your Name.."/></td></tr>
			<tr><td><textarea class="msg_content" name="senderMessage"></textarea></td></tr>
			<tr><td><input type="submit" name="" value="Submit" class="but_submit"/></td></tr>
			</table>
		</form>
		</div>
		</div>
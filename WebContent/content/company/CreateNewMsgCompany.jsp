<%@ taglib uri="/struts-tags" prefix="s"%>
<style>
.page_title{ background: #E4FCEA; border: 1px solid #C6E5C9; height:30px; margin-top:10px;}
.header_profile{ margin:0; padding:0;color: #298B1C; font-family: 'MerriweatherSans-Bold'; margin-left: 10px; padding-top: 2px; }


.message_body{ margin:10px; overflow:auto}
.reply_area{ width:885px; padding:10px;}
.reply_area input[type="submit"]{ float:right; margin:10px auto}
.reply_field{ min-width:880px; max-width:880px; min-height:150px; border:1px solid #CCCCCC}
.msg_header{ width:874px; height:30px; font-size:16px; font-weight:600; padding-left:10px; border:1px solid #CCCCCC; margin-bottom:10px;}

</style>


<div class="page_title"><h2 class="header_profile">Messages</h2></div>
    <div class="profile_container">
		<div class="message_container">
			
			<div class="reply_area">
			<input type="text" class="msg_header"/>
			<textarea class="reply_field"></textarea>
			</div>
			<div class="reply_area"><input type="submit" value="Reply"/></div>
		</section>
		</div>
</div>
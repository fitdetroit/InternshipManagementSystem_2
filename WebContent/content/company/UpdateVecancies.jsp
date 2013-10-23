<%@ taglib uri="/struts-tags" prefix="s"%>
<style>
.page_title{ background:rgba(227, 252, 221, 1); margin-top:10px; padding:5px 0 0 5px; border: 1px solid #C2F0C2;} 
.profile_container{ font-size:14px; padding:10px;}
.header_profile {color:#298B1C; margin: 0 auto;font-family: 'MerriweatherSans-Bold'; font-size:22px;}
table.table_info{ border:none}
table.table_info th{ text-align:left; color:#3960A5}
table.table_info th ul{ list-style-type:none; padding:0}
table.table_info th ul li{ float:left; margin-right: 30px;}
table.table_info th ul li.sub_header{color: #48A038;}
table.table_info td.col_1{ width:240px; text-align:right; color: #333333; font-weight:600; font-size:15px; padding-right:10px;}
table.table_info td.col_2{ width:10px; text-align:right; vertical-align:top}
table.table_info td.col_3{ width:700px; font-size:14px;}
table.table_info td.col_3{ padding:0; margin:0; padding-left:10px; padding-top:5px;}
#add_more{ width:30px; height:30px; margin-left:10px;}

.but_submit{background: #003399; width: 100px; height: 35px; -webkit-border-radius: 3px; border-radius: 3px; border: 1px solid #0033CC; color: #FFFFFF; line-height:1; float:right; margin-right:400px}
.but_submit:hover{ background:#0000FF}
.inputs{ height:28px; border:1px solid #CCCCCC; padding-left:10px;}
</style>

 <div class="page_title"><h2 class="header_profile">Update Vacancies</h2>
		<p>Freelancer.com is the world’s #1 outsourcing website and consistently ranks in the Top 250 Sites Worldwide. Advertise to millions of professionals and business decision makers everyday!</p></div>
    <div class="profile_container">
		<div class="updates_cont">
		<table cellpadding="0" cellspacing="0" class="table_info">
			<th>Related Fields</th>
			<tr><td class="col_1" >Web Developing</td>
				<td class="col_2" >:</td>
				<td class="col_3" >3</td>
			</tr>
			<tr ><td class="col_1"><tr><td class="col_1"><input type="text" name="" class="inputs"/></td>
				<td class="col_2">:</td>
				<td class="col_3"><input type="text" name="" class="inputs"/><img src="assets/img/add_more.png" id="add_more" class="add_more_1"/></td>
			</tr>
		
			<script type="text/javascript">
			$("#add_more").click(function () {
			   $("table").append($("<tr><td class='col_1'><tr><td class='col_1'><input type='text' name='' class='inputs'/></td><td class='col_2'>:</td><td class='col_3' ><input type='text' name='' class='inputs'/></td></tr>"));
			  //$("").hide();
			 // var n = $("div").length;
			  //$("span").text("There are " + n + " divs." +
							 //"Click to add more.");
			})// trigger the click to start
			
/*			$( document ).ready(function() {
				$(".current_values").css("background", "#CCCCCC");
				$(".current_values").css("border", "none");
				
				$(".current_values").click(function(){
					$(this).css("background", "red");
				});
				$(".current_values").focusout(function(){
					$(this).css("background", "#999999");
				});
				
				
			});			*/

</script>
		</table>
	<input type="submit" value="Update" class="but_submit"/>
		</div>
		

		</div>
<nav class="main_menu">
	<ul>
		<a href="<s:url action="AdminPage"/>"><li class="menu_sub_header dashboard">Dashboard<div class="arrow_div"></div></li></a>
		<li class="menu_sub_header mng_internship">Manage Internships<div class="arrow_div"><div class="arrow_div"></div></li>
		<li class="menu_sub_header menu_company">&nbsp;- Company<div class="arrow_div"></div></li>
			<ul class="second_menu" id="second_menu_company">
				<a href="<s:url action="AllowedCompany"/>"><li class="sub_active reg_comp">Registered Companies<div class="arrow_div"></li></a>
				<a href="<s:url action="NotAllowedCompany"/>"><li class="new_req sub_active">New Requests<div class="arrow_div"></li></a>
			</ul>
		<li class="menu_sub_header students">&nbsp; - Students<div class="arrow_div"></div></li>
			<ul class="second_menu" id="second_menu_students">
				<a href="<s:url action="AllStudent"/>"><li class="reg_st sub_active">Registered Students<div class="arrow_div"></li></a>
				<a href="<s:url action="HaddleCv"/>"><li class="hsnddlecv sub_active">Handdle CVs<div class="arrow_div"></li></a>
				<a href="<s:url action="NewStudetProfiles"/>"><li class="add_st sub_active">Add New Students<div class="arrow_div"></li></a>
				<a href="<s:url action="ToRemoveStudetProfiles"/>"><li class="rem_st sub_active">Remove Students<div class="arrow_div"></li></a>
			</ul>
		<a href="<s:url action="Message_actionByAdmin"/>"><li class="menu_sub_header messages" class="messages">Messages<div class="arrow_div sub_active" ></div></li></a>
		<li class="menu_sub_header reports" class="reports">Reports<div class="arrow_div sub_active"></div></li>
			<ul class="second_menu" id="second_menu_reports">
				<li>Companies</li>
				<li>Students</li>
			</ul>
	</ul>
</nav>
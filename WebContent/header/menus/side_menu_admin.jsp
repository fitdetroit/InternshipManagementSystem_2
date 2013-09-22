<nav class="main_menu">
	<ul>
		<a href="<s:url action="AdminPage"/>"><li class="menu_sub_header dashboard">Dashboard<div class="arrow_div"></div></li></a>
		<li class="menu_sub_header mng_internship">Manage Internships<div class="arrow_div"></div></li>
		<li class="menu_sub_header menu_company">Company<div class="arrow_div"></div></li>
			<ul class="second_menu" id="second_menu_company">
				<a href="<s:url action="AllowedCompany"/>"><li class="sub_active">Registered Companies</li></a>
				<a href="<s:url action="NotAllowedCompany"/>"><li>New Requests</li></a>
			</ul>
		<li class="menu_sub_header students">Students<div class="arrow_div"></div></li>
			<ul class="second_menu" id="second_menu_students">
				<a href="<s:url action="AllStudent"/>"><li>Registered Students</li></a>
				<a href="<s:url action="HaddleCv"/>"><li>Handdle CVs</li></a>
				<a href="<s:url action="NewStudetProfiles"/>"><li>Add New Students</li></a>
				<a href="<s:url action="ToRemoveStudetProfiles"/>"><li>Remove Students</li></a>
			</ul>
		<li class="menu_sub_header messages">Messages<div class="arrow_div"></div></li>
		<li class="menu_sub_header reports">Reports<div class="arrow_div"></div></li>
			<ul class="second_menu" id="second_menu_reports">
				<li>Companies</li>
				<li>Students</li>
			</ul>
	</ul>
</nav>
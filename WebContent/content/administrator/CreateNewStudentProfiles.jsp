<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>


<div class="content_wrapper newstudentadmin">
			<header class="content_header"><h2>Registere New Students for IMS</h2></header>
	<section class="middle_continer">
				<h3>Internship Summery</h3>
				<hr>
			<div class=" text_area"><s:form method="post" action="CreateStudetProfiles" enctype="multipart/form-data" validate="true">
				Enter Students : <textarea class="text" name="studentList" cols="100" rows="13" Placeholder="Plese Enter Index numbers"></textarea>
			</div>
			<div class=" text_area">
				Default Password: <input type="password" class="pwd_area" name="password"/><input type="submit" value="Submit" class="start_button right_align but_submit"/>
			</div>
			<p><strong><i>Note:</i></strong>&nbsp; Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
			</s:form>
	
	
	
	</section>

</div>


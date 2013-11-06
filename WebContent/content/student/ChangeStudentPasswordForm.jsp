<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>

<h3>General Information</h3>




						<fieldset class="fieldset">
						<s:form method="post" action="updateStudentPassword" enctype="multipart/form-data">
							<div class="inputrow">
								<label class="inputlabel">New Password</label>
								<div class="inputarea">													 
									 <input type="password"  class="autocomplete_field half"  name="password"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Confirm Password</label>
								<div class="inputarea">													 
									 <input type="password"  class="autocomplete_field half"  name="conPassword"/>
									 <s:hidden label="only update password" name="updateOnlyPassword" value="true" ></s:hidden>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Confirm Password</label>
								<div class="inputarea">													 
									 <input type="submit"  class="but_submit"  name="update" value="Change"/>
									
								</div>
							</div>
						</s:form>
						</fieldset>
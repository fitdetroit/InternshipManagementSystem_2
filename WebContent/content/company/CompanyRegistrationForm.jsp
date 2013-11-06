<%@ taglib uri="/struts-tags" prefix="s"%>
<s:form method="post" action="RegisterCompany" id="signUp" enctype="multipart/form-data">

					<div class="notification_area">
						<h2>Welcome To Internship Management System</h2>
						<p>Resister with us by filling out this simple form.</p>
					</div>
					
					<div class="form_container">
			
			

			<h3>General Information</h3>




						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Name of the Company</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half"  name="companyName"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Add company Logo</label>
								<div class="inputarea">													 
			
									<input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">About the Company </label>
								<div class="inputarea">													 

									 <textarea class="autocomplete_field half discription_area" placeholder="Give a brief description" name="aboutCompany"></textarea>

			</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Choose your Username</label>
								<div class="inputarea">													 

									 <input type="text" placeholder="You can't change your username once you confrm it" name="companyUserName" id="companyUserName" class="autocomplete_field half" />

								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Create a Password</label>
								<div class="inputarea">													 
									 <input type="password" id="password" name="password" class="autocomplete_field half" />
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Conform your Password</label>
								<div class="inputarea">													 
									 <input type="password" name="conPassword"  class="autocomplete_field half" />
								</div>
							</div>
						</fieldset>
						
					<h3>Technologies</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 

									 <textarea class="autocomplete_field half discription_area" placeholder="Which technologies are you following in your company?  eg: java,.Net,PHP" name="technologies"></textarea>


								</div>
							</div>
						</fieldset>	
						
					<h3>General Contact Information</h3>
						<fieldset class="fieldset">
							<div class="inputrow">
								<label class="inputlabel">Telephone</label>
								<div class="inputarea">													 


									 <input type="text"  class="autocomplete_field half" maxlength="10" name="companyTelephone"/>

								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Company Address</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="companyAddress"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Company URL</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half" name="companyWeb"/>
								</div>
							</div>
							
							<div class="inputrow">
								<label class="inputlabel">Email Address</label>
								<div class="inputarea">													 
									 <input type="text" class="autocomplete_field half" name="companyEmail"/>
								</div>
							</div>
						</fieldset>
						

						
						
						<h3 class="header_importent">Provide contact details for the use of Administrator</h3>
					<h3 >Contact Person</h3>
						<fieldset class="fieldset importent">
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="contactPerson"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 

									 <input type="text"  class="autocomplete_field half" maxlength="10" name="contactPersonTelNo" />

								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="contactPersonEmail"/>
								</div>
							</div>
							
							<hr>
							<p>Alternative contact person (optional)</p>
							<div class="inputrow">
								<label class="inputlabel">Name of the Person</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="alContactPerson"/>
								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact Number</label>
								<div class="inputarea">													 

									 <input type="text"  class="autocomplete_field half" maxlength="10" name="alContactPersonTelNo"/>

								</div>
							</div>
							<div class="inputrow">
								<label class="inputlabel">Contact email Address</label>
								<div class="inputarea">													 
									 <input type="text"  class="autocomplete_field half" name="alContactPersonEmail"/>
								</div>
							</div>
						</fieldset>
						
						<fieldset class="fieldset">
							<div class="inputrow">

								<input type="checkbox" name="tick"/>
                <label for="tick">&nbsp; I agrre to interact with Faculty of Information Technology in the Internship program. </label>

								
 
							</div>
						</fieldset>	
					
						<div class="inputrow">
								<label class="inputlabel">&nbsp;</label>
								<div class="inputarea">													 
									 <input type="submit" value="SUBMIT" class="but_submit" id="signUp"/>
									 
									 <span class="but_create" style="cursor:pointer" id="rest_button">RESET</span>
								</div>
						</div>
						
						
					</div><!-- /End Form container-->
</s:form>



<script>
$(document).ready(function(){
	
	$("#rest_button").click(function(){
		
		//alert("sldkfjslkdfj");
		$(".autocomplete_field").val("");
		
	});
	
	
	
});

</script>
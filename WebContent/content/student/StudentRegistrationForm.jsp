<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
<s:form id="StudentRegForm" method="post" action="RegisterStudent" enctype="multipart/form-data">                                
<div class="form_container editprofile">
                        
                        
                        <h3>General Information</h3>
                                                <fieldset class="fieldset">
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Index No.</label>
                                                                <div class="inputarea">
                                                                        <input type="text" value="114455K" disabled="disabled" class="autocomplete_field half input_disabled"  name="indexnumber"/>
                                                                        
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Name In Full</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="text" class="autocomplete_field half validate[required,custom[nameInFull]]"  name="nameInFull"  value=""/>
                                                                </div>
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Name With Initials</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="text"  class="autocomplete_field half"  name="nameWithInitials" value=""/>
                                                                </div>
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Gender</label>
                                                                <div class="inputarea">                                                                                                         
                                                                        <select class="autocomplete_field small">
                                                                                 <option value="Male">Male</option>
                                                                                 <option value="Female">Female</option>
                                                                        </select>
                                                                </div>
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Marital Status</label>
                                                                <div class="inputarea">                                                                                                         
                                                                        
                                                                         <select class="autocomplete_field small">
                                                                                 <option value="Married">Married</option>
                                                                                 <option value="Unmaried">Unmarried</option>
                                                                                 </select>
                                                                </div>
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Date Of birth</label>
                                                                <div class="inputarea">                                                                                                         
                        
                                                                        <input type="text" class="autocomplete_field half" name="dateOfBirth" value=""/>
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Select a Profile Picture</label>
                                                                <div class="inputarea">                                                                                                         
                        
                                                                        <input type="file" placeholder="Type project name to find existing" class="autocomplete_field half" name="ProfilePicture"/>
                                                                </div>
                                                        </div>
                                                </fieldset>
                                        
                                                
                                        <h3>Contact Information</h3>
                                                <fieldset class="fieldset">
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Address</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="text"  class="autocomplete_field half" name="permanentAddress" value="" />
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Contact No.</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="text"class="autocomplete_field half" name="mobile1" value="" maxlength="10" />
                                                                </div>
                                                        </div>
                                                        
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Email Address</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="text" class="autocomplete_field half" name="email" value="" />
                                                                </div>
                                                        </div>
                                                </fieldset>
                                                        
                                        <h3>Skills & Expertise</h3>
                                                <fieldset class="fieldset">
                                                        <div class="inputrow">
                                                                <label class="inputlabel">&nbsp;</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <textarea class="autocomplete_field half discription_area" placeholder="Type project name to find existing" ></textarea>
                                                                </div>
                                                        </div>
                                                </fieldset>        
                                                
                                                <h3>Experience</h3>
                                                <fieldset class="fieldset">
                                                <div id="Experience_container"></div>
                                                <span id="addExp">Add Variable</span>
                                                
                                                </fieldset>
                                                
                                                <h3>Completed Projects</h3>
                                                <fieldset class="fieldset" id="comletedProject">
                                                <div id="project_container"></div>
                                                <span id="addProject">Add Variable</span>
                                                </fieldset>


                                                <h3>Education</h3>
                                                <fieldset class="fieldset">
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Digree</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <select class="autocomplete_field half"><option>Bsc(Hons) Information Technology</option>
                                                                                 <option>Bsc(Hons) Information Technology & Management</option></select>
                                                                                 &nbsp;Select Batch
                                                                                 <select class="autocomplete_field small">
                                                                                 <option value"11">11</option>
                                                                                 <option value"12">12</option>
                                                                                 <option value"13">13</option>
                                                                                 <option value"14">14</option>
                                                                                 <option value"15">15</option>
                                                                                 <option value"16">16</option>
                                                                                 <option value"17">17</option>
                                                                                 <option value"18">18</option>
                                                                                 <option value"19">19</option>
                                                                                 <option value"20">20</option>
                                                                                 <option value"21">21</option>        
                                                                         </select>
                                                                         
                                                                </div>
                                                        </div>
                                                        <div class="inputrow gpa_details">
                                                                <label class="inputlabel">GPA</label>
                                                                <div class="inputarea">                                                                                                         
                                                        
                                                                        Semester 1:
                                                                                 <input type="text" class="autocomplete_field small" name="gpaSemester1" value=""/>        
                                                                        Semester 2:
                                                                                         <input type="text" class="autocomplete_field small" name="gpaSemester2" value=""/>
                                                                        Semester 3:
                                                                                 <input type="text" class="autocomplete_field small" name="gpaSemester3" value=""/>         
                                                                </div>                                                        
                                                        </div>
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        <hr>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">School</label>
                                                                <div class="inputarea">                                                                                                         
                                                                 <input type="text" class="autocomplete_field half" name="school" value="" />
                                                                
                                                                        &nbsp;Select Year
                                                                                 <select class="autocomplete_field small">
                                                                                 <option>2005</option>
                                                                                 <option selected></option>
                                                                                 <option>2007</option>
                                                                                 <option>2008</option>
                                                                                 <option>2009</option>
                                                                                 <option>2010</option>
                                                                                 <option>2011</option>
                                                                                 <option>2012</option>
                                                                                 <option>2013</option>
                                                                                 <option>2014</option>
                                                                                 <option>2015</option>
                                                                                 <option>2016</option>        
                                                                         </select>
                                                                </div>
                                                                                                                
                                                                
                                                        </div>
                                                        
                                                        
                                                        <div class="inputrow">
                                                                <label class="inputlabel">Your A/L Results</label>
                                                                <div class="inputarea">                                                                                                         
                                                                
                                                                <input type="text" class="autocomplete_field half" name="alSubject1" value=""/>
                                                        
                                                                        &nbsp;Select Result
                                                                                 <select class="autocomplete_field small">
                                                                                 <option>A</option>
                                                                                 <option>B</option>
                                                                                 <option>C</option>
                                                                                 <option>S</option></select>
                                                                                 
                                                                </div>                                                        
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">&nbsp;</label>
                                                                <div class="inputarea">                                                                                                         
                        
                                                                        <input type="text" class="autocomplete_field half" name="alSubject2" value=""/>
                                                                        
                                                                         &nbsp;Select Result
                                                                                 <select class="autocomplete_field small">
                                                                                 <option>A</option>
                                                                                 <option>B</option>
                                                                                 <option>C</option>
                                                                                 <option>S</option></select>
                                                                </div>                                                        
                                                        </div>
                                                        <div class="inputrow">
                                                                <label class="inputlabel">&nbsp;</label>
                                                                <div class="inputarea">                                                                                                         
                        
                                                                        <input type="text" class="autocomplete_field half" name="alSubject3" value=""/>
                                                                        
                                                                         &nbsp;Select Result
                                                                                 <select class="autocomplete_field small">
                                                                                 <option>A</option>
                                                                                 <option>B</option>
                                                                                 <option>C</option>
                                                                                 <option>S</option>        </select>        
                                                                </div>                                                        
                                                        </div>         
                                                        
                                                </fieldset>
                                                
                                                
                                                <h3>Extracurricular  Activities</h3>
                                                <fieldset class="fieldset">
                                                <div id="Activity_container"></div>
                                                <span id="addExtraq">Add Variable</span>
                                                </fieldset>
                                                
                                                <h3>Extracurricular  Activities</h3>
                                                <fieldset class="fieldset">
                                                <div class="inputrow">
                                                
                                                <label class="inputlabel">Seletct A Company</label>
                                                                                                                                                                         
                                                                   
                                                <table>
                                                <tr><td><s:select list="%{list}" name="appliedCompany1"></s:select> </td></tr>
													<tr><td><s:select list="%{list}" name="appliedCompany2"></s:select> </td></tr>
													<tr><td><s:select list="%{list}" name="appliedCompany3"></s:select> </td></tr>
													<tr><td><s:select list="%{list}"  name="appliedCompany4"></s:select> </td></tr>
													<tr><td><s:select list="%{list}" name="appliedCompany5"></s:select> </td></tr>
												</table>

                                                        </div>
                                                </fieldset>
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                
                                                <div class="inputrow">
                                                                <label class="inputlabel">&nbsp;</label>
                                                                <div class="inputarea">                                                                                                         
                                                                         <input type="submit" value="SUBMIT" class="but_submit" id="signUp"/>
                                                                         
                                                                         <input type="submit" value="RESET" class="but_create"/>
                                                                </div>
                                                </div>
                                                
                                                
                                        </div><!-- /End Form container-->

</s:form>

<script>
//create three initial fields
$(document).ready(function(){

                
                //remove a textfield    
                $('.removeVar').on('click', function(){
                   $(this).parent().remove();
                  
                });
                //add a new node
var i = 1;
var expcout = 1;
var activity =1;

$('#addProject').on('click', function(){

if(i == 6){
alert(i);

}
else{
$("#project_container").append('<div id="proj_container'+i+'"><div class="inputrow"><label class="inputlabel">Title</label> <div class="inputarea"> <input type="text" placeholder="Project title" class="autocomplete_field half"  name="projectTitle'+i+'" value=""/> </div> </div> <div class="inputrow"> <label class="inputlabel">Description</label> <div class="inputarea"> <input type="text" class="autocomplete_field half discription_area" placeholder="Description" name="projectDescription'+i+'" value=""/></textarea><span class="removeVar">Remove Variable</span></p> </div> </div></div>');
i++;

}                
                });

$('#addExp').on('click', function(){

        
        if(expcout == 6){ 
                alert(expcout); }

        else{
                
                $("#Experience_container").append('<div id="exp_container'+i+'"><div class="inputrow"><label class="inputlabel">Title</label><div class="inputarea"><input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="otherQulification'+expcout+'" value=""  /></div></div><div class="inputrow"><label class="inputlabel">Description</label><div class="inputarea"><textarea class="autocomplete_field half discription_area" placeholder="Description" name="experienceDisc'+expcout+'" value=""></textarea></div></div></div>');
                expcout++;
        }                
});
$('#addExtraq').on('click', function(){

        
        if(activity == 6){ 
                alert(activity); }

        else{
                
                $("#Activity_container").append('<div id="act_container'+activity+'"><div class="inputrow"><label class="inputlabel">Title</label><div class="inputarea"><input type="text" placeholder="Name of the company" class="autocomplete_field half"  name="otherQulification'+activity+'" value=""  /></div></div><div class="inputrow"><label class="inputlabel">Description</label><div class="inputarea"><textarea class="autocomplete_field half discription_area" placeholder="Description" name="experienceDisc'+activity+'" value=""></textarea></div></div></div>');
                activity++;
        }            
	});

});
</script>
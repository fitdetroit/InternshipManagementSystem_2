    $(document).ready(function()
    {
      
      $("#StudentRegForm").validate(
      {
        rules:{
        	
        	nameInFull:{	
                required:true

                },
                
            nameWithInitials:{	
                required:true

            },
            dateOfBirth:{	
                required:true

            },
            permanentAddress:{	
                required:true

            },
            mobile1:{	
         	   number: true,
         	   minlength: 10,

            },
            email:{	
                required:true,
                email: true

                },
                
            gpaSemester1:{	
                required:true,

                },
           gpaSemester2:{	
             required:true,

           },
           gpaSemester3:{	
               required:true,

             },
        	
          },
        errorClass: "help-inline-note" 
      });
    });
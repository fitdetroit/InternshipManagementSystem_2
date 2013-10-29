    $(document).ready(function()
    {
      
      $("#signUp").validate(
      {
        rules:{
        	companyName:"required",
        	term:"required",
        	
        	companyUserName:"required",
        	term:"required",
        	
        	companyEmail:{	
                required:true,
                email: true

                },
            password:{
                    required:true,
                  },
            conPassword:{
                    required:true,
                    equalTo: "#password"
                      },
           companyTelephone:{
        	   required:true,
        	   number: true,
        	   minlength: 10,
        	},
        	contactPerson:{
        		required:true,
        		
        	},
        	contactPersonTelNo:{
        		required:true,
        		number: true,
         	   minlength: 10,
        	},
        	contactPersonEmail:{
        		required:true,
        		email: true
        		
        	},
        	
        	alContactPersonTelNo:{
        		number: true,
          	   minlength: 10,
        		
        	},
        	contactPersonEmail:{
        		email: true
        		
        	},
        	checkedbox:{
        		required:true,
        		
        	},
        	
          },
        errorClass: "help-inline-note" 
      });
    });
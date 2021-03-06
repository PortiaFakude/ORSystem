<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link rel = "stylesheet" href = "css/regform.css"/>
        
  
    <style>
        body{background-image:url("images/img16.jpg");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 5000px;
            }
            table{
                margin-top:50px;
                color:black;
            }
            input{
                height: 20px;
                
            }
            #log{
                color:ghostwhite;
                
            }
            .log{
                color:chartreuse; 
            }
            
 </style>
    
 <script>
  function checkForm(form)
  {
        
	if(form.first_Name.value == "" )
        {
		  alert("Please provide your name!");
		  form.first_Name.focus();
		  return false;  
	}

        if(form.last_Name.value == ""){
		  alert("Please provide your last name!");
		  form.last_Name.focus();
		  return false;
	}

        if(form.D_O_B.value == ""){
		  alert("Please provide your date of birth");
		  form.D_O_B.focus();
		  return false;
	}
        if((form.gender[0].checked == false) && (form.gender[1].checked == false){
	    	alert("Please choose your gender: Male or Female");
	    	//form.gender.focus();
	    	return false;
        }
        if(form.cell_No.value == ""){
		  alert("Please provide your cellphone");
		  form.cell_No.focus();
		  return false;
	}
        if(form.address.value == ""){
			  alert("Please provide your residential address!");
			  form.address.focus();
			  return false;  
        }
                  
        if(form.parent_Name.value == ""){
		  alert("Please provide your parent name");
		  form.parent_Name.focus();
		  return false;
	}       
          
        if(form.parent_Contact.value == ""){
		  alert("Please provide your parent contact!");
		  form.parent_Contact.focus();
		  return false;
	}   
        if(form.highest_Grade_Passed.value == ""){
		  alert("Please provide highest grade passed!");
		  form.highest_Grade_Passed.focus();
		  return false;
	}        
                                 
        if(form.username.value == "") {
	      alert("Username cannot be blank!");
	      form.username.focus();
	      return false;
	}
	    re = /^\w+$/_;
	if(!re.test(form.username.value)) {
	      alert("Error: Username must contain only letters, numbers and full stops!");
	      form.username.focus();
	      return false;
	}
           
	if(form.password.value != "" && form.password.value == form.password.value) {
	      if(form.password.value.length < 6) {
	        alert("Error: Password must contain at least six characters!");
	        form.password.focus();
	        return false;
	      }
	      if(form.password.value == form.username.value) {
	        alert("Error: Password must be different from Username!");
	        form.password.focus();
	        return false;
	      }
	      re = /[0-9]/;
	      if(!re.test(form.password.value)) {
	        alert("Error: password must contain at least one number (0-9)!");
	        form.password.focus();
	        return false;
	      }
	      re = /[a-z]/;
	      if(!re.test(form.password.value)) {
	        alert("Error: password must contain at least one lowercase letter (a-z)!");
	        form.password.focus();
	        return false;
	      }
	      re = /[A-Z]/;
	      if(!re.test(form.password.value)) {
	        alert("Error: password must contain at least one uppercase letter (A-Z)!");
	        form.password.focus();
	        return false;
	      }
        } else {
	      alert("Error: Please check that you've entered and confirmed your password!");
	      form.password.focus();
	      return false;
	    }
	       
        if(!form.terms.checked){
		  alert("Please indicate if the learner accepts the Terms and Conditions!");
		  form.terms.focus();
		  return false
        }        
    else{
        alert("Successfully registered,click OK to continue!");
        return true;
    }
    }
	  return true;           
}
</script>

    </head>

    <body>
        <form method="post" action="registrationA.jsp" onsubmit="return checkForm(this);">
        
            <fieldset class = "personal_info">
                <legend><font color="white"> PERSONAL INFORMATION </legend>
                <ol>   
                    
                    <label for="firstName"> First name:</label>
                        <input type ="text" maxlength=15 name ="first_Name" size = 30 id="first_Name" required="required"><br/>
                
                    <label for="lastName"> Last name:</label>
                        <input type ="text" maxlength=15 name ="last_Name" size = 30 id="last_Name"  required="required"><br/> 
                        
                     <label for="DOB"> Date of birth:</label>
                        <input type ="date" name ="D_O_B" size = 30 id="D_O_B"  required="required"><br/> 
                        
                    <label for="gender">Gender:</label>   
                    <input type="radio" name="gender" value="Female">Female 
                    <input type="radio" name="gender" value="Male">Male 
             <ol/> 
            </fieldset>  
             <fieldset>
                <legend><font color="white"> CONTACT DETAILS </legend>
                <ol>   
               
                    <label for="cellNo"> Cellphone number:</label>
                        <input type ="text" name ="cell_No" maxlength=10 size = 30 id="cell_No"><br/>
                        
                    <label for="address"> Residential address:</label>
                        <input type ="text" name ="address" maxlength=40 size = 30  id="address"><br/>
                        <label for="">NEXT OF KIN </label><br/>
                    <label for="parentName"> Name & surname: </label>
                        <input type ="text" name ="parent_Name" maxlength=30 size = 30 id="parent_Name"><br/>
                    <label for="parentContact"> Cellphone number: </label>
                        <input type ="text" name ="parent_Contact" maxlength=10 size = 30 id="parent_Contact"><br/>
                                              
             <ol/> 
            </fieldset> 
            <fieldset>
                <legend><font color="white"> EDUCATIONAL DETAILS </legend>
                <ol>   
               
                    <label for="highestGradePassed"> Highest grade passed: </label>
                        <input type ="text" name ="highest_Grade_Passed" maxlength=10 size = 30 id="highest_Grade_Passed"><br/>                                             
             <ol/> 
            </fieldset> 
              
            <fieldset>
                <legend><font color="white"> LOGIN DETAILS </legend>
                <ol>   
               
                    <label for="username">Username: </label>
                        <input type ="text" name ="username" maxlength=30 size = 30 id="username"><br/>
                    <label for="password">Password: </label>
                        <input type ="password" name ="password" maxlength=20 size = 30 id="password"><br/>
                        
                        <tr>
               <td><font color = "#FF0000">*</font><input  type ="checkbox" name = "terms"  value ="i agree to the terms of use" /><strong>I accept the <u><a href="TAC.jsp">Terms and Conditions</a></strong></u>
                    </td></tr> 
             <ol/> 
            </fieldset> 
           
            <td><input type="reset" value="Reset" /></td>
            <td><input type="submit" value="Submit" /></td>
            
                        
        </form>
    </body>
</html>

<!DOCTYPE HTML>
<html>
<head>
<title>Detecting Malicious Facebook Applications</title>

</head>
<script>
    function validateform(){  
var username=document.myform.username.value;  
var password=document.myform.password.value;
var phoneno = document.getElementById('txtphoneno');
 
  
if (document.myform.username.value == "") {
        alert("Enter a username");
        document.myform.username.focus();
        return false;
    }
    if (!/^[a-zA-Z]*$/g.test(document.myform.username.value)) {
        alert("Please use only characters for username");
        
        document.myform.username.focus();
        return false;
    }
else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
  if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }

    }
    </script>
<body>

                      
                          <form name="myform" id="loginForm" action="reg" method="post"  enctype="multipart/form-data" onsubmit="return validateform()" >
<fieldset id="body">
    <table>
        <tr><td><fieldset>
          <label for="username">User Name</label>
          <input type="text" name="username" id="email">
                </fieldset></td></tr>
       <tr><td><fieldset>
            <label for="password">Password</label>
            <input type="password" name="password" id="password">
     </fieldset></td></tr>
         <tr><td><fieldset>
          <label for="email">Email Address</label>
          <input type="text" name="email" id="email">
    </fieldset></td></tr>

    <tr><td> <fieldset>
          <label for="sex">Gender</label>
          <select name="sex">
              <option>
                  Male
              </option>
              <option>
                  Female
              </option>
          </select>


    </fieldset></td></tr>
     <tr><td> <fieldset>
          <label for="country">Country</label>
          <input type="text" name="country" id="country">
    </fieldset></td></tr>
        <tr><td> <fieldset>
          <label for="phoneno">Mobile</label>
          <input type="text" name="phoneno" id="txtphoneno" onkeypress="return isNumber(event)">
    </fieldset></td></tr>
</fieldset></td></tr>
        <tr><td> <fieldset>
          <label for="pic">Profile Pic</label>
          <input type="file" name="file" id="file">
    </fieldset></td></tr>
    <br>
    <div class="col-md-9 ftr-email">
        <tr><td>  <input type="submit" id="login" value="Register"></td></tr>
    </div>
    </table>
</fieldset>
								 </form>
                        </center>
	  	</div>
	  	 
	  </div>
  </div>
</div>


</div>

</body>
</html>
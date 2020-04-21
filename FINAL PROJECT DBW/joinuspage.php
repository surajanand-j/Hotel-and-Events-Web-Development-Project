<!DOCTYPE html>
<html>
<head>
	<title>CUSTOMER REGISTRATION</title>
</head>

<script type="text/javascript">
<!--
// Form validation code will come here.
function validate()
{

if( document.joinus.fname.value == "" )
{
	alert( "Please provide your first name!" );
	document.joinus.fname.focus() ;
	return false;
}

if( document.joinus.lname.value == "" )
{
	alert( "Please provide your lastname!" );
	document.joinus.lname.focus() ;
	return false;
}
if( document.joinus.mno.value == "" )
{
	alert( "Please provide your contact number!" );
	document.joinus.mno.focus() ;
	return false;
}

if( document.joinus.address.value == "" )
{
	alert( "Please provide your proper address!" );
	document.joinus.address.focus() ;
	return false;
}

if( document.joinus.email.value == "" )
{
	alert( "Please provide your email!" );
	document.joinus.email.focus() ;
	return false;
}
if( document.joinus.uname.value == "" )
{
	alert( "Please provide your username!" );
	document.joinus.uname.focus() ;
	return false;
}
if( document.joinus.password.value == "" )
{
	alert( "Please provide password!" );
	document.joinus.password.focus() ;
	return false;
}
if( document.joinus.password2.value == "" )
{
	alert( "Please confirm password!" );
	document.joinus.password2.focus();
	return false;
}
if( document.joinus.password.value !=document.joinus.password2.value  )
{
	alert( "passwords are not matching!");
	document.joinus.password.focus() ;
	document.joinus.password2.focus() ;
	return false;
}
if( document.joinus.password.value.length<=6 )
{
	alert( "make sure password is greater than 6 characters" );
	document.joinus.password.focus() ;
	return false;
}
var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
if( !filter.test(document.joinus.email.value) )
{
	alert( "please provide a valid email  \nprovided email instance:: tanishjain174@gmail.com" );
	document.joinus.email.focus() ;
	return false;
}

var p= /\d{10}/
if(!p.test(document.joinus.mno.value))
{
	alert("mobile number must contain 10 digits\nfor instance::1234567899");
	document.joinus.mno.focus();
	return false;
}





}
//-->
</script>
	<link rel="stylesheet" type="text/css" href="css/stylesignup.css">
<body>

<div id="signup-box"><div class="signup"><center>
  <h1> CUSTOMER REGISTRATION</h1>
  <form onsubmit="return validate()" action="joinus.php" method="POST" name="joinus" >
  <input type="text" name="fname" placeholder="First Name" required/>
  <input type="text" name="lname" placeholder="Last Name" required/>
  <input type="text" name="mno" placeholder="Mobile No." required/>
  <input type="textarea" name="address" placeholder="address"required/>
  <input type="text" name="email" placeholder="Email"required/>
  <input type="text" name="uname" placeholder="Username"required/>
  <input type="password" name="password" placeholder="Password"required/>
  <input type="password" name="password2" placeholder="Confirm Password"required/><br>
  <input type="submit" name="Apply" value="Apply" /></center></form>
</div></div></body>
</html>

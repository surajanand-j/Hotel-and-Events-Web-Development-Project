<!DOCTYPE html>
<html>
<head>
	<title>ADD   EVENTS</title>
</head>
<script type="text/javascript">
<!--
// Form validation code will come here.
function validate()
{
	var p=/(1|2|3|4)/;
	if(!p.test(document.addevents.Did.value))
	{
		alert("Department ID must be between 1 to 4 \nfor instance::4");
		document.addevents.Did.focus();
		return false;

	}


}
</script>

<body>

	<link rel="stylesheet" type="text/css" href="css\stylesignup.css">
<div id="signup-box"><div class="signup"><center>
  <h1> ADD EVENT</h1>
  <form onsubmit="return validate()" action="addevents.php" method="POST" name="addevents">
  <input type="text" name="EventID" placeholder="Event ID"required/>
  <input type="text" name="Name" placeholder="Event Name"required/>
  <input type="Date" name="Date" placeholder="Date"required/>
  <input type="time" name="Time" placeholder="Time"required/>
  <input type="text" name="Venue" placeholder="Venue"required/>
  <input type="text" name="Did" placeholder="Did"required/><br>
  <input type="submit" name="Add" value="Add"/></center></form>
</div></div></body>
</html>

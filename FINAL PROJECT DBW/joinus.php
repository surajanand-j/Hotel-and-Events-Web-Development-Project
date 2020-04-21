<?php
 $con=mysqli_connect("localhost","root","","user_data"); 
 if (mysqli_connect_errno()) 
 { 
 echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
  } 
 
$sql="INSERT INTO candidates (FNAME, LNAME,MOBILE,EMAIL,ADDRESS,USER_ID,PASSWORD) 
VALUES ('$_POST[fname]','$_POST[lname]','$_POST[mno]','$_POST[email]','$_POST[address]','$_POST[uname]','$_POST[password]')";  
 
if (!mysqli_query($con,$sql))  
 {   die('Error: ' . mysqli_error($con));   } 
else{echo "<center>YOU HAVE SUCCESSFULLY REGISTERED FOR JOB APPLICATION<br><br>";
 echo "YOUR DETAILS WILL BE VERIFIED AND YOU WILL BE NOTIFIED ONCE YOUR APPLICATION IS CONFIRMED</center>";}
 
mysqli_close($con);
 ?> 
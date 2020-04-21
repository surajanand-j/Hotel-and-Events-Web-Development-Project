<?php
 $con=mysqli_connect("localhost","root","","project"); 
 if (mysqli_connect_errno()) 
 { 
 echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
  } 
 
$sql="INSERT INTO events (EventID,Name,Date,Time,Venue,Did) 
VALUES ('$_POST[EventID]','$_POST[Name]','$_POST[Date]','$_POST[Time]','$_POST[Venue]','$_POST[Did]')";  
 
if (!mysqli_query($con,$sql))  
 {   die('Error: ' . mysqli_error($con));   } 
else{echo "New Events has been added Successfully";}
 
mysqli_close($con);
 ?> 
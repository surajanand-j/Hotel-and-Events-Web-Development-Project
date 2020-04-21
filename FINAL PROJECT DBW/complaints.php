<?php
 $issue=$_POST['issue'];
 $query="select FNAME,LNAME,MOBILE,USER_ID
   from volunteers
    where team='$issue'";
 $con=mysqli_connect("localhost","root","","PROJECT"); 
 if (mysqli_connect_errno()) 
 { 
 echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
  } 
 $result=mysqli_query($con,$query);
 $row=mysqli_fetch_array($result);
 $sql="INSERT INTO needy_persons (FNAME,LNAME,MOBILE,ADDRESS,PROBLEM,DETAILS,VOLUNTEER) 
VALUES ('$_POST[fname]','$_POST[lname]','$_POST[mno]','$_POST[address]','$_POST[issue]','$_POST[issuedef]','$row[USER_ID]')";  
 
if (!mysqli_query($con,$sql))  
 {   die('Error: ' . mysqli_error($con));   } 
else{echo "Your Complaint has been successfully registered<br>";
 echo "Our volunteer Mr/Ms ".$row["FNAME"]." ".$row["LNAME"]." (MobileNo. ".$row["MOBILE"]." ) will reach you soon!<br>";}
 
mysqli_close($con);
 ?> 
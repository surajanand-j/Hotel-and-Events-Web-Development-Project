<?php
    $fname=$_POST['fname'];
    $lname=$_POST['lname'];
   $query="select *
   from candidates
    where FNAME='$fname' and LNAME='$lname'";
   $con=mysqli_connect('localhost','root','','project');
    $result=mysqli_query($con,$query);
    $check=mysqli_fetch_array($result);
    if(isset($check)){
       $sql="INSERT INTO volunteers (FNAME, LNAME,MOBILE,EMAIL,ADDRESS,USER_ID,PASSWORD,Team,DEPT_ID) 
       VALUES ('$check[FNAME]','$check[LNAME]','$check[MOBILE]','$check[EMAIL]','$check[ADDRESS]','$check[USER_ID]','$check[PASSWORD]','$_POST[issue]','$_POST[dept]');";
       if(!mysqli_query($con,$sql))
       { die('Error: ' . mysqli_error($con));}
       mysqli_query($con,"DELETE FROM candidates
       where FNAME='$fname' and LNAME='$lname';");
       echo "Application sucessfully verified";


   } else {
       
       echo '<script language="javascript">';
       echo 'alert("Applicants record not found!")';
       echo '</script>';
   }
   

?>
<?php


   $user=$_POST['ADMIN_ID'];
    $password=$_POST['password'];
   $query="select ADMIN_ID,PASSWORD
   from admin
    where ADMIN_ID='$user' and PASSWORD='$password'";
   $con=mysqli_connect('localhost','root','','project');
    $result=mysqli_query($con,$query);
    $check=mysqli_fetch_array($result);
    if(isset($check)){
       header("location:adminpage2.php");
   } else {
       
       echo '<script language="javascript">';
       echo 'alert("enter correct admin_id and password")';
       echo '</script>';
   }
   

?>
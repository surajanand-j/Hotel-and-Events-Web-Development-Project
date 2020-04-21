<!DOCTYPE html>
<html>
<head>
 <title>customer List</title>


 <style type="text/css">
 @import url('https://fonts.googleapis.com/css?family=Allura&display=swap'); 
body {
  background-image: url(background.jpg);
 background-size: none;
 margin-top:-2.5%;
}

ul,tr {
 margin-left: 8%;
 margin-top: -1.5%;
 padding: 0px;
 list-style: none;
 font-family: arial;
}

ul li {
 float: left;
 width: 130px;
 height: 35px;
 background-color: black;
 opacity: .8;
 line-height: 35px;
 text-align: center;
 font-size: 18px;

}

ul li a {
 text-decoration: none;
 color: white;
 display: block;
}

ul li a:hover {
 background-color: green;
}

ul li ul li{
 display: none;
}

ul li:hover ul li {
 display: block;
}
.camp_img{
  margin-top: 2%;
  margin-bottom: 0%;
  overflow: hidden;
  width: 50%;

  text-align: center;
  
  margin-left: auto;
  margin-right: auto;
  

}
.glow {
  
  -webkit-animation: glow 1s ease-in-out infinite alternate;
  -moz-animation: glow 1s ease-in-out infinite alternate;
  animation: glow 1s ease-in-out infinite alternate;
}



@-webkit-keyframes glow {
  from {
    text-shadow: 0 0 10px #fff, 0 0 20px #fff, 0 0 30px #e60073, 0 0 40px #e60073, 0 0 50px #e60073, 0 0 60px #e60073, 0 0 70px #e60073;
  }
  
  to {
    text-shadow: 0 0 20px #fff, 0 0 30px #ff4da6, 0 0 40px #ff4da6, 0 0 50px #ff4da6, 0 0 60px #ff4da6, 0 0 70px #ff4da6, 0 0 80px #ff4da6;
  }
</style>
</head>

<body>
  <div class="pqr">
    <h1  class="glow" 
    style="font-family:'Allura', cursive;
               text-align: center;
               font-size: 50px;
               color: #ff0000; " >THE HOTEL GRAND</h1></div>
<center>
<h1> CUSTOMERS LIST</h1>
<p>room_id</br>1->deluxe</br>2->non-deluxe</br>3->couple</br>4->sea-facing</p>
<?php
$con=mysqli_connect("localhost","root","","project"); 
// Check connection 
if (mysqli_connect_errno()) 
  { 
  echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
  } 
$result = mysqli_query($con,"select * from volunteers;"); 
echo "<center><table border='1' cellpadding='1'>
<tr>
<th>FNAME</th>
<th> LNAME</th>
<th> MOBILE</th>
<th> EMAIL</th>
<th> ADDRESS </th>
<TH> TEAM </th>
<th> ROOM_ID </th>
</tr>";
while($row = mysqli_fetch_array($result)) 
  { 
  echo "<tr>";
  echo"<td>".$row['FNAME']."</td>
  <td>".$row['LNAME']."</td>
  <td>".$row['MOBILE']."</td>
  <td>".$row['EMAIL']."</td>
  <td>".$row['ADDRESS']."</td>
  <td>".$row['Team']."</td>
  <td>".$row['ROOM_ID']."</td></tr>";
  } 
  echo "</table></center><br><br></center>";

<!DOCTYPE html>
<html>
<head>
 <title>Events</title>

 <style type="text/css">
 @import url('https://fonts.googleapis.com/css?family=Allura&display=swap'); 
body {
  background-image: url(image1.jpeg);
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

<ul>
 <li><a href="proj.html">HOME</a></li>
 <li><a href="#">ABOUT</a>
  <ul>
   <li><a href="team.htm">OUR TEAM</a></li>
   <li><a href="camsites.htm">HOTEL SITES</a></li>
   <li><a href="approach1.htm">MISSION & VISION</a></li>
   <li><a href="approach1.htm">RESOURCES</a></li>
  </ul>
 </li>
 <li><a href="joinuspage.php">JOIN US</a></li>
 <li><a href="complaintspage.php">HELPLINE</a></li>
 <li><a href="gallery.html">GALLERY</a></li>
 <li><a href="#">CAMPAIGNS</a>
  <ul>
   <li><a href="activity.htm">ACTIVITIES</a></li>
   <li><a href="events.php">EVENTS</a></li>
  </ul>
 </li>
 <li><a href="contactus.html">CONTACT</a>
 </li>
 <li><a href="news.html">NEWS</a></li>
 <li><a href="adminpage.php">ADMIN</a></li>
</ul>
<br>
<br>
<br><br>
<?php
$con=mysqli_connect("localhost","root","","project"); 
// Check connection 
if (mysqli_connect_errno()) 
  { 
  echo "Failed to connect to MySQL: " . mysqli_connect_error(); 
  } 
$result = mysqli_query($con,"select * from events;"); 
echo "<center><table border='1' cellpadding='1'>
<tr>
<th>Event ID</th>
<th> Event Name</th>
<th> Date </th>
<th> Time </th>
<th> Venue </th>
<th> Dept Id </th>
</tr>";
while($row = mysqli_fetch_array($result)) 
  { 
  echo "<tr>";
  echo"<td>".$row['EventID']."</td>
  <td>".$row['Name']."</td>
  <td>".$row['Date']."</td>
  <td>".$row['Time']."</td>
  <td>".$row['Venue']."</td>
  <td>".$row['Did']."</td></tr>";
  } 
  echo "</table></center>";
<!DOCTYPE html>
<html>
<head>
	<title>Applicant's Verification</title>
  <style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Allura&display=swap'); 
body{
  margin:0;
  padding:0;
  background-image:url("back.jpg");
  background-size: cover;
  font-family: sans-serif;
}
.signup{
  position:absolute;
  top:50%;
  left:50%;
  transform:translate(-50%, -50%);
  width:450px;
  height:auto;
  padding:80px 40px;
  box-sizing:border-box;
  background: rgba(0, 0, 0, 0.5);
  overflow-y: hidden;
  margin-top: 4%;
}
h1{
  margin:0;
  padding;0 0 20px;
  color:#1E90FF;
  text-align: center;
}
.signup input{
  width:100%;
  margin-bottom: 20px;

}
.signup input[type="text"], .signup input[type="password"], .signup input[type="textarea"]
{
  border=none;
  border-bottom: 1px solid #fff;
  background:transparent;
  outline:none;
  height:40px;
  color:#fff;
  font-size:16px;
}
.signup input[type="submit"]
{
  border:none;
  outline:none;
  height:40px;
  color:#fff;
  font-size:16px;
  background:rgb(255,38,126);
  cursor:pointer;
  border-radius:20px;
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
	<link rel="stylesheet" type="text/css" href="finalcss.css">
  <center>

<div class="pp" >
<div class="pqr">
    <h1  class="glow" 
    style="font-family:'Allura', cursive;
               text-align: center;
               margin-top: 3%;
               font-size: 70px;
               color: #ff0000; " >THE HOTEL GRAND</h1></div>
<h1 style="color: blue;margin-top: -2%;"></h1>


</center>
<div id="signup-box"><div class="signup">
  <center>

  <form action="verification.php" method="POST" name="verification">
  <input type="text" name="fname" placeholder="First name"/>
    <input type="text" name="lname" placeholder="Last Name"/><br><br>
    <div class="dev">
    <div style="color: white;"> Allot team: <select name="issue"></div>
    <option value="chef">chef</option>
    <option value="managmen">managment</option>
    <option value="marketing">marketing</option>
    <option value="crowd control">crowd control</option>
    <option value="performance">performance</option>
        <option value="hygine">hygine</option>
            <option value="inspector">inspector</option>
                <option value="Health Care">Health Care</option>
                    <option value="staff">staff</option>
                        <option value="Waste Managemant">Waste Managemant</option>
                            <option value="Others">Others</option>
  </select></div>
  <br>
 <div style="color: white;"> Allot Department: </div><br><select name="dept"></div>
    <option value="1">NOIDA</option>
    <option value="2">KERALA</option>
    <option value="3">UTTARAKHAND</option>
    <option value="4">GUJARAT</option>
    
  </select></div>
  <br><br>
  
  <input type="submit" name="Verify" value="Verify"/></center></form>
</div></div></div></body>
</html>

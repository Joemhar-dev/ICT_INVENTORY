<?php 

  session_start();
  ob_start();

  require 'database.php';
  require 'function.php';

  if(isset($_POST['login'])) {

    $uname = $_POST['f_uname'];
    $pword = md5($_POST['f_password']);

    $query = "SELECT * FROM user WHERE USERNAME = '$uname' AND PASSWORD = '$pword'";

    $result = mysqli_query($con,$query);

    if(mysqli_num_rows($result) > 0) {

      $row = mysqli_fetch_assoc($result);
      
      $_SESSION['userid'] = $row['ID'];
      $_SESSION['username'] = $row['USERNAME'];
      $_SESSION['password'] = $row['PASSWORD'];

      header("location:dashboard.php");
      exit;
    } else {
      
	  header('location:login.php?message=loginfailed');
    }

  }
if(!isset($_SESSION['username'], $_SESSION['password'])) {
?>
<!DOCTYPE html>
<html>
<head>
	<title>DPWH LEYTE 3RD DEO ICT EQUIPMENT INVENTORY</title>
	<link rel="icon" href="pictures/logo.png" type="image/x-icon">
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<script>
			setTimeout(function(){
				document.getElementById('alert').style.display = "none";
			},3000);
			
		</script>
<body>
<?php include "header.php"; ?>
<div class="container">
<div class="con">
	<?php 
		if (isset($_GET['message'])) { 
			if ($_GET['message'] == "loginfailed") {?>
			<div class="alert alert-danger text-center" role="alert" id="alert">
				
				<?php echo "INVALID USERNAME OR PASSWORD!"; ?>
			</div>
              <?php
				}elseif ($_GET['message'] == "changesuccess") { ?>
			<div class="alert alert-success text-center" role="alert" id="alert">
				
				<?php echo "PASSWORD SUCCESSFULLY UPDATED!"; ?>
			</div>
              <?php
				}
		}

      ?>
		
	<div class="icon">
		<img src="pictures/profile.png">
	</div>
	    
<form method="POST">
	    
			<div class="can">
			<input type="text" name="f_uname" class="txt" placeholder="Enter Username" required autocomplete="off"></div>
			<div class="can">
			<input type="password" id="password" name="f_password" class="txt" placeholder="Enter Password" required>	
			</div>
			<div class="can">
			<input type="checkbox" name="showpass" onchange="shpassword(this)">
		    <small id="showpass">Show Password</small>
			</div>
			<div class="can">
				<button type="submit" name="login">Login</button>
			</div>	
			<div class="can">
				<a href="forgotpassword.php">Forgot Password?</a>
			</div>
	</form>
</div>
</div>
<div class="footer">
	<div class="pit">
   <img src="pictures/logo.png">
	<small>DPWH Leyte 3rd DEO</small>
</div>
<p>ICT Equipment Inventory System</p>
</div>
</body>
<script>
	function shpassword(x)
	{
		var checkbox = x.checked;

		if (checkbox) {
			document.getElementById('password').type = "text";
			document.getElementById('showpass').textContent ="Hide Password";
		}else
		{
			document.getElementById('password').type="password";
			document.getElementById('showpass').textContent ="Show Password";
		}
	}
</script>
</html>
<?php
 } else {
    header("location:view.php");
    exit;
  }

  unset($_SESSION['prompt']);
  unset($_SESSION['errprompt']);
  unset($_SESSION['location']);

  mysqli_close($con);

?>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
body{
	margin: 0;
	padding: 0;
	background-color:#bdc3c7;
	background-image: url("pictures/logo.png");
	background-repeat: no-repeat;
	background-size: 700px;
	background-position: center;
}
.container{
	width: 100%;
	background-color: transparent;
	display: flex;
	height: 100%;
	border: 1px solid black;
	align-items: center;
	justify-content: center;
	padding-left: 0;
	padding-right: 0;
}
.con{
	width: 350px;
	padding-bottom: 10px;
	background-color: #95afc0;
	border-radius: 5px;
	opacity: .95;
	font-family: century gothic;
	box-shadow: 10px 10px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.icon{
	width: 100%;
	align-items: center;
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding-top: 10px;
	padding-bottom: 10px;
}
.icon img{
	width: 45px;
	height: 45px;
}
.can{
	width: 220px;
	margin: 20px auto;

}
.txt{
	padding: 7px;
	width: 220px;
	border: none;
	color: white;
	background-color: transparent;
	border-bottom:2px solid white;
	font-size: 16px;
}
input:focus{
	border-bottom:2px solid white;
	outline: none !important;
}
button{
	padding: 7px;
	width: 220px;
	background-color: darkblue;
	cursor: pointer;
	font-weight: bold;
	font-size: 16px;
	color: #FFFFFF;
	border: none;
	border-radius: 3px;
}
button:hover{
	padding: 6px;
	font-size: 17px;
	background-color: blue;
}
h2{
   font-family: century gothic;
}
a{
	text-decoration: none;
	font-size: 14px;
	font-family: century gothic;

}
small{
	font-size: 12px;
	color: darkblue;
}
.footer{
	position: fixed;
    left: 0;
    bottom: 0;
    padding: 10px;
    width: 100%;
    text-align: center;
	background-color: #130f40;
}
.pit{
	text-align: center;
	color: white;
	justify-content: center;
	align-items: center;
	display: flex;
}
.pit img{
	width: 25px;
	height: 25px;
}
.footer small{
	font-size: 10px;
	color: #ffffff;
	font-family: century gothic;
}
.footer p{
	font-family: century gothic;
	font-size: 14px;
	color: #ffffff;
	margin-bottom: 7px;
}
@media screen and (max-width: 1600px){

	.con{
		width: 300px;
	}
	body{
		background-size: 500px;
	}
}
</style>
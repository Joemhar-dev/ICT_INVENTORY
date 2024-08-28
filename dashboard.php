<?php 
	  session_start();
	  ob_start();
      require "database.php";
      require "function.php";

 if(isset($_SESSION['username'], $_SESSION['password'])) {
?>
<!DOCTYPE html>
<html>
<head>
	<title>DPWH LEYTE 3RD DEO ICT EQUIPMENT INVENTORY</title>
	<link rel="icon" href="pictures/logo.png" type="image/x-icon">
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<?php include "header.php"; ?>
<div class="container">
	<div class="menu">
			<div class="profile">
				<?php
			$uname = $_SESSION['username'];
            $psword = $_SESSION['password'];

        $query = "SELECT * FROM user WHERE USERNAME = '$uname' AND PASSWORD = '$psword'";

        if($result = mysqli_query($con, $query)) {

          $row = mysqli_fetch_assoc($result);

        $lname = strtoupper($row['LASTNAME']);
        $fname = strtoupper($row['FIRSTNAME']);

      } else {

          die("Error with the query in the database");

        }

      ?>
				<img src="pictures/profile.png" style="width: 50px; height: 50px;">
				<h4><?php echo $fname," ",$lname; ?></h4>
			</div>
			<ul>
				<li>
		          <a href="dashboard.php" id="active">
		          	<img src="pictures/dashboard.png" class="pic">
					<span>Dashboard</span>
		          </a>
		        </li>
		        <li>
		          <a href="registration.php">
		          	<img src="pictures/add.png" class="pic">
					<span>Add Item</span>
		          </a>
		        </li>
		        <li>
		          <a href="view.php">
		          	<img src="pictures/operational.png" class="pic">
					<span>Operational</span>
		          </a>
		        </li>
		        <li>
		          <a href="unserviceable.php">
		          	<img src="pictures/drop.png" class="pic">
					<span>Unserviceable</span>
		          </a>
		        </li>
		        <li>
		          <a href="disposed.php">
		          	<img src="pictures/disposed.png" class="pic">
					<span>Disposed</span>
		          </a>
		        </li>
		        <li>
		          <a href="fixed_item.php">
		          	<img src="pictures/fixed.png" class="pic">
					<span>Available</span>
		          </a>
		        </li>
		        <li class="me">
		          <a href="#">
		          	<img src="pictures/manage.png" class="pic">
					<span>Manage Account</span>
		          </a>
		          	<ul class="sub">
		        		<li><a data-toggle="modal" data-target="#changepassmodal" id="changemodal" name="changemodal" style="cursor: pointer;">Change Password</a> </li>
		        		<li><a href="register_user.php">Add User</a> </li>
		        		<li><a href="logout.php">Logout</a> </li>
		        	</ul>
		        </li>         

		      </ul>
		</div>
	
<div class="content" id="content">
	<?php 
  if(isset($_SESSION['prompt'])) {
          showmessage();
        }elseif(isset($_SESSION['errprompt'])) {
           	promptError();
           }
        ?>
	<div class="welcome">
		<h6>Welcome Admin</h6>
		<hr>
    </div>
    <div class="d1">
		<a href="view.php" class="condition">
		<div class="items">
			<div class="data">
				<p>Operational</p>
				<h5><?php
				$query = "SELECT * FROM inventory";
							 $result = mysqli_query($con,$query);

							if ($total = mysqli_num_rows($result)) {
								echo $total;
							}else{
								echo "0";
							} ?></h5>
			</div>
			<div class="icon">
				<i class="fa fa-calendar-check-o" style="font-size:48px;color:#16a085;"></i>
			</div>
			
		</div>
		</a>
		<a href="unserviceable.php" class="condition">
		<div class="items">
			<div class="data">
				<p>Unserviceable</p>
				<h5><?php
				$query = "SELECT * FROM unserviceable";
							 $result = mysqli_query($con,$query);

							if ($total = mysqli_num_rows($result)) {
								echo $total;
							}else{
								echo "0";
							} ?></h5>
			</div>
			<div class="icon">
				<i class="fa fa-calendar-minus-o" style="font-size:48px;color:#e74c3c;"></i>
			</div>
			
		</div>
		</a>
		<a href="disposed.php" class="condition">
		<div class="items">
			<div class="data">
				<p>Disposed</p>
				<h5><?php
				$query = "SELECT * FROM disposed";
							 $result = mysqli_query($con,$query);

							if ($total = mysqli_num_rows($result)) {
								echo $total;
							}else{
								echo "0";
							} ?></h5>
			</div>
			<div class="icon">
				<i class="fa fa-calendar-times-o" style="font-size:48px;color:#c0392b;"></i>
			</div>
			
		</div>
		</a>
		<a href="fixed_item.php" class="condition">
		<div class="items">
			<div class="data">
				<p>Fixed</p>
				<h5><?php
				$query = "SELECT * FROM fixed";
							 $result = mysqli_query($con,$query);

							if ($total = mysqli_num_rows($result)) {
								echo $total;
							}else{
								echo "0";
							} ?></h5>
			</div>
			<div class="icon">
				<i class="fa fa-calendar-plus-o" style="font-size:48px;color:#2ecc71;"></i>
			</div>
			
		</div>
		</a>
	</div>
	<div class="d2">
	<?php
	$query = "SELECT * FROM type";
		$result = mysqli_query($con, $query); 
        if ($result) {
		while ($row=mysqli_fetch_assoc($result)) {
			$name = $row['NAME'];?>
		<a href="#">
		<div class="items" style="height: 70px;">
			<div class="icon" style="width: 20%;">
				<span style="font-size: 13px; color:#9b59b6; text-align: center;"><?php echo $name; ?></span>
			</div>
			<div class="data" style="width: 20%;">
				<p style="font-size: 12px; color:#16a085; ">Operational</p>
				<h5 style="font-size: 14px;">
				<?php
				$sql = "SELECT TYPE FROM inventory WHERE TYPE LIKE '%$name%'";
				 $resul = mysqli_query($con,$sql);

				if ($totaln = mysqli_num_rows($resul)) {
					echo $totaln;
				}else{
					echo "0";
				} ?>
				</h5>
			</div>
			<div class="data" style="width: 20%;">
				<p style="font-size: 12px; color:#e74c3c; ">Unserviceable</p>
				<h5 style="font-size: 14px;">
				<?php
				$sql = "SELECT TYPE FROM unserviceable WHERE TYPE LIKE '%$name%'";
				 $resul = mysqli_query($con,$sql);

				if ($totaln = mysqli_num_rows($resul)) {
					echo $totaln;
				}else{
					echo "0";
				} ?>
				</h5>
			</div>
			<div class="data" style="width: 20%;">
				<p style="font-size: 12px; color:#c0392b; ">Disposed</p>
				<h5 style="font-size: 14px;">
				<?php
				$sql = "SELECT TYPE_OF_EQUIPMENT FROM disposed WHERE TYPE_OF_EQUIPMENT LIKE '%$name%'";
				 $resul = mysqli_query($con,$sql);

				if ($totaln = mysqli_num_rows($resul)) {
					echo $totaln;
				}else{
					echo "0";
				} ?>
				</h5>
			</div>
			<div class="data" style="width: 20%;">
				<p style="font-size: 12px; color:#2ecc71; ">Fixed</p>
				<h5 style="font-size: 14px;">
				<?php
				$sql = "SELECT TYPE_OF_EQUIPMENT FROM fixed WHERE TYPE_OF_EQUIPMENT LIKE '%$name%'";
				 $resul = mysqli_query($con,$sql);

				if ($totaln = mysqli_num_rows($resul)) {
					echo $totaln;
				}else{
					echo "0";
				} ?>
				</h5>
			</div>
			
		</div>
		</a>
	<?php
	}
	}
	?>
	</div>

	</div>
</div>
<?php
      include "changepassword.php";

      $id = $_SESSION['userid'];

		  if(isset($_POST['change'])) {

    $oldpass = md5($_POST['oldpass']);
    $newpass = md5($_POST['newpass']);
    $confirmpass = md5($_POST['confirm']);

    $query = "SELECT PASSWORD FROM user WHERE PASSWORD = '$oldpass'";
    $result = mysqli_query($con, $query);

    if(mysqli_num_rows($result) > 0) {

      if($newpass == $confirmpass) {

        $query = "UPDATE user SET PASSWORD = '$newpass' WHERE ID='$id'";

        if($result = mysqli_query($con, $query)) {
                 session_destroy();
                 header('location:login.php?message=changesuccess');
                 exit;} else {

          die("Error with the query");

        }

      } else {
      			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "PASSWORDS NOT MATCH!";
                 header('location:dashboard.php');
                 exit;
       }

    } else {
    			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "OLD PASSWORD INCORRECT!";
                 header('location:dashboard.php');
                 exit;

    }

  }     
      ?>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</html>
<?php 
}else {
    header("location:login.php");
    exit;
    }
  unset($_SESSION['errprompt']);
  unset($_SESSION['prompt']);
  mysqli_close($con);
?>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
body{
	background-repeat: no-repeat;
    background-size: cover;
	background-color:#2f3640;
	position: relative;
}
.container{
	width: 100%;
	padding-top: 100px;
	background-color: transparent;
	display: flex;
	padding-left: 0;
	padding-right: 0;
}
.menu{
	width: 290px;
	height: 100%;
	position: fixed;
	background-color: #182C61;

}
.content{
	width: 98%;
	border-radius: 5px;
	margin: 5px .5% 10px 295px;
	background-color:#2c3e50;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
	padding:20px;
	padding-bottom: 120px;
	display: flex;
	flex-direction: column;

}
.welcome{
	width: 100%;
	font-family: century gothic;
	text-align: left;
}
.welcome h6{
	font-size: 15px;
	color: #9b59b6;
	font-weight: bold;
}
.welcome hr{
	width: 100%;
	color: #7f8c8d;
	background-color:#7f8c8d;
}
.d1{
	width: 100%;
	color: white;
	padding: 10px;
	background: transparent;
	display:flex;
	margin-bottom: 15px;
	flex-wrap: wrap;
	align-items: stretch;
	justify-content: left;
	border-radius: 5px;

}
.d2{
	width: 100%;
	color: white;
	padding: 10px;
	background: transparent;
	display:flex;
	margin-bottom: 15px;
	flex-wrap: wrap;
	align-items: stretch;
	justify-content: left;
	border-radius: 5px;
}
.d1 a{
	width: 20%;
	height: 100px;
	text-decoration: none;
	margin: 10px;
}
.d2 a{
	width: 47%;
	height: 70px;
	text-decoration: none;
	margin: 10px;
}
.items:hover{
	border: 2px solid #777;
}
.items{
	width: 100%;
	height: 100px;
	border: .5px solid #7f8c8d;
	border-radius: 7px;
	display: flex;
	flex-direction: row;
	background:#34495e;
}
.data{
	width: 70%;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-direction: column;
	padding: 0;;
}
.data p{
	width: auto;
	font-size: 15px;
	text-align: left;
	color: #9b59b6;
}
.data h5{
	width: auto;
	font-size: 25px;
	text-align: left;
	font-weight: bold;
	font-family: century gothic;
	color: #ecf0f1;

}
legend{
	font-size: 12px;
	padding: 0;
	margin: 0;
	width: auto;
	text-align: left;
	font-weight: bolder;

}
.icon{
	width: 30%;
	display: flex;
	align-items: center;
	justify-content: center;
	border: none;
	outline: none;
	
}
li{

	width: 100%;
}
.menu a{
	text-decoration: none;
	width:290px;
	padding: 7px 0 7px 0;
	color: white;
	font-size: 20px;
	text-shadow:3px 3px #30336b; 
	font-family:century gothic;
	align-items: center;
	display: flex;
}
.menu a:hover{
	background-color: #4b6584;
}
.sub li{
	list-style: none;
}
.sub li a{
	width:290px;
	padding-left: 72px;
	display: none;
}
.me:hover .sub li a{
	display: block;
}
.pic{
	width: 38px;
	height: 38px;
	margin-left: 20px;
}
.profile{
	width: 90%;
	height: 50px;
	position: relative;
	background-color: transparent;
	padding: 50px 0 50px 10%;
	text-align: center;
	color: white;
	text-shadow:3px 3px #30336b; 
	font-family:century gothic;
	align-items: center;
	display: flex;
}
#active{
  transition: 0.5s;
  background: #4b6584;
}
@media screen and (max-width: 1100px){
    .d1 a{
    	width: 45%;
    }
    .d2 a{
    	width: 95%;
    }
}
@media screen and (max-width: 800px){
    .d1 a{
    	width: 90%;
    }
}
@media screen and (max-width: 1600px) {
  
            .menu{
                width:250px;
            }
            .menu a, .sub li a{
            	width: 250px;
            	font-size: 15px;
            }
            .content{
            	margin-left: 255px;
            	padding: 15px;
            }
        }
</style>
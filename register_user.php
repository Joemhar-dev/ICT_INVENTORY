<?php 
	  session_start();
	  ob_start();
      require "database.php";
      require "function.php";

  if (isset($_POST['save'])) {


   	  $username = clean($_POST['username']);
      $password = md5($_POST['password']);
      $lname = clean($_POST['lname']);
      $fname = clean($_POST['fname']);
      $mi = clean($_POST['mi']);
      $scode = md5($_POST['scode']);
      $contact = clean($_POST['contact']);
      $email = clean($_POST['email']);
      $age = clean($_POST['age']);
      $gender = clean($_POST['gender']);
      $status = clean($_POST['status']);
      $birthday = clean($_POST['birthday']);
      $address = clean($_POST['address']);
      $date = date('m/d/Y');


      $query = "SELECT USERNAME FROM user WHERE USERNAME = '$username'";
      $result = mysqli_query($con,$query);

      if(mysqli_num_rows($result) == 0) {

      	$query = "INSERT INTO user(USERNAME, PASSWORD , LASTNAME, FIRSTNAME , MIDDLENAME, SECURITY_CODE , CONTACT, EMAIL, AGE, GENDER, CIVIL_STATUS, BIRTHDAY, ADDRESS, DATE_REGISTER) VALUES('$username','$password','$lname','$fname','$mi','$scode','$contact','$email','$age', '$gender','$status','$birthday', '$address', '$date')";

        if(mysqli_query($con, $query)) {

        	$_SESSION['location'] = "register_user.php";
        	$_SESSION['prompt'] = "DATA HAS BEEN SAVE SUCCESSFULLY!";
        	header('location:register_user.php');
        	exit;
        	
        } else {

            $_SESSION['location'] = "register_user.php";
        	$_SESSION['errprompt'] = "EMAIL IS ALREADY EXIST!!";
        	header('location:register_user.php');
        	exit;
        }
      } else {
      		$_SESSION['location'] = "register_user.php";
        	$_SESSION['errprompt'] = "USERNAME IS ALREADY EXIST!";
        	header('location:register_user.php');
        	exit;
      	
      }

    } 
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<?php include "header.php"; 
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
                 header('location:register_user.php');
                 exit;
       }

    } else {
    			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "OLD PASSWORD INCORRECT!";
                 header('location:register_user.php');
                 exit;

    }

  }     
	?>
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
		          <a href="dashboard.php">
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
		          <a href="#" id="active">
		          	<img src="pictures/manage.png" class="pic">
					<span>Manage Account</span>
		          </a>
		          	<ul class="sub">
		        		<li><a data-toggle="modal" data-target="#changepassmodal" id="changemodal" name="changemodal" style="cursor: pointer;">Change Password</a> </li>
		        		<li><a href="register_user.php" id="active">Add User</a> </li>
		        		<li><a href="logout.php">Logout</a> </li>
		        	</ul>
		        </li>         

		      </ul>
		</div>
<div class="content" id="content">
	
		<form class="uform" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
			<?php 

        if(isset($_SESSION['prompt'])) {
          showmessage();
        }elseif(isset($_SESSION['errprompt'])) {
           	promptError();
           }

      ?>
			<div class="legend" style="width: 95%; margin: 20px;">
				<label>ACCOUNT INFORMATION</label><br>
			</div>
			<div class="data">
				<label>Username*</label><br>
				<input type="text" name="username" required autocomplete="off">
			</div>
			<div class="data">
				<label>Password*</label><br>
				<input type="password" name="password" required>
			</div>
			<div class="data">
			</div>
			<div class="legend" style="width: 95%; margin: 20px;">
				<label>PERSONAL INFORMATION</label><br>
			</div>
			<div class="data">
				<label>Last Name*</label><br>
				<input type="text" name="lname" required autocomplete="off">
			</div>
			<div class="data">
				<label>First Name*</label><br>
				<input type="text" name="fname" required autocomplete="off">
			</div>
			<div class="data">
				<label>Middle Name*</label><br>
				<input type="text" name="mi" required autocomplete="off">
			</div>
			<div class="data">
				<label>Security Code*</label><br>
				<input type="password" name="scode" required>
			</div>
			<div class="data" autocomplete="off">
				<label>Contact*</label><br>
				<input type="number" name="contact" required>
			</div>
			<div class="data" autocomplete="off">
				<label>Email*</label><br>
				<input type="email" name="email" required autocomplete="off">
			</div>
			<div class="data">
				<label>Age*</label><br>
				<input type="number" name="age" required>
			</div>
			<div class="data">
				<label>Gender*</label><br>
				<select name="gender" required>
					<option style="display: none;"></option>
					<option>MALE</option>
					<option>FEMALE</option>
					<option>OTHERS</option>
				</select>
			</div>
			<div class="data">
				<label>Civil Status*</label><br>
				<select name="status" required>
					<option style="display: none;"></option>
					<option>SINGLE</option>
					<option>MARRIED</option>
					<option>SEPARATED</option>
					<option>WIDOW</option>
				</select>
			</div>
			<div class="data">
				<label>Birthday*</label><br>
				<input type="date" name="birthday" required>
			</div>
			<div class="data" autocomplete="off">
				<label>Address*</label><br>
				<textarea name="address" required> </textarea>
			</div>
			<div class="data">
			</div>
			<div class="data" style="width: 100%; display: flex; align-items: center; justify-content: center;">
				<button type="button" onclick="window.location.href = 'dashboard.php';" id="back">Back</button>
				<button type="submit" name="save">Save</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>
<?php
 } else {
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
.uform{
	width: 85%;
	margin: 10px 1% 20px 1%;
	background-color: #ced6e0;
	padding: 5px 1% 0 1%;
	display: flex;
	flex-wrap: wrap;
	align-items: center;
	justify-content: center;
	border-radius: 5px;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.data{
	padding: 2px;
	margin: 5px;
	width: 400px;
}
.data label{
	font-family: century gothic;
	font-size: 12px;
}
.data button{
	padding: 7px;
	width: 100px;
	text-align: center;
	background-color: darkgreen;
	font-size: 13px;
	font-weight: bold;
	color: white;
	cursor: pointer;
	border-radius: 5px;
	margin: 20px auto;
	border: none;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.data button:hover{
	color: white;
	background-color: #006266;
}
#back{
	background-color: blue; 
	color: white;
}
#back:hover{
	color: white;
	background-color: #006266;
}
.data input,select,textarea{
	padding: 5px;
	width: 350px;
	font-size: 12px;
	border: transparent;
	border-radius: 3px;
	background-color: #ffffff;
	font-family: century gothic;
	border: .5px solid gray;
}
.data textarea:focus{
	outline: none !important;
	border: 1px solid lightblue;
	box-shadow: 0px 0px 4px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.data input:focus{
	outline: none !important;
	border: 1px solid lightblue;
	box-shadow: 0px 0px 4px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.data select:focus{
	outline: none !important;
	border: 1px solid lightblue;
	box-shadow: 0px 0px 4px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
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
	margin: 5px .5% 120px 295px;
	background-color:#dfe4ea;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
	padding: 20px;
	display: flex;
	flex-direction: column;

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
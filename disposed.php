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
                 header('location:disposed.php');
                 exit;
       }

    } else {
    			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "OLD PASSWORD INCORRECT!";
                 header('location:disposed.php');
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
		          <a href="disposed.php" id="active">
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
	
		<div class="data">
				<label>SEARCH:</label>
				<input type="text" name="search" id="search" placeholder="" autocomplete="off">
				<button type="submit" onclick="window.location.href = 'print_disposed.php';">Print Report</button>
			</div>
			<?php 
  if(isset($_SESSION['prompt'])) {
          showPrompt();
        }elseif (isset($_SESSION['errprompt'])) {
        	promptError();
        }
        ?>
<table class="table" id="myTable">
	<thead>
		<tr>
			<th>ITEM NO.</th>
			<th>TYPE OF ICT EQUIPMENT</th>
			<th>SERIAL NUMBER</th>
			<th>MODEL</th>
			<th>BRAND</th>
			<th>ASSET OWNER</th>
			<th>END USER</th>
			<th>SECTION</th>
			<th>DATE DISPOSED</th>
		</tr>
	</thead>
	<tbody>
<?php
$query = "SELECT * FROM disposed";
$result = mysqli_query($con, $query); 
if ($result) {
	while ($row=mysqli_fetch_assoc($result)) {

        $item = $row['ITEM_NUMBER'];
        $equipment =$row['TYPE_OF_EQUIPMENT'];
        $serial = $row['SERIAL_NUMBER']; 
        $brand = $row['BRAND_NAME'];
        $model = $row['MODEL'];
        $owner = $row['ASSET_OWNER'];
        $user = $row['USER'];
        $section = $row['SECTION'];
        $date = $row['DATE_DISPOSED'];

 ?>

      <tr>
         <td><?php echo $item;?></td>
         <td><?php echo $equipment;?></td>
         <td><?php echo $serial;?></td>
         <td><?php echo $model;?></td>
         <td><?php echo $brand;?></td>
         <td><?php echo $owner;?></td>
         <td><?php echo $user;?></td>
         <td><?php echo $section;?></td>
         <td><?php echo $date;?></td>
 </tr>
<?php
    }
}
?>
	</tbody>
</table>
	</div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#search').keyup(function(){
			search_table($(this).val());
		});
		function search_table(value){
			$('#myTable tr').each(function(){
				var found = 'false';
				$(this).each(function(){
					if ($(this).text().toLowerCase().indexOf(value.toLowerCase())>=0) 
					{
						found = 'true';
					}
				});
				if (found=='true') {
					$(this).show();
				}
				else{
					$(this).hide();
				}
			});
		}
	});
</script>
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
.data{
	padding: 5px;
	margin-top: 50px;
	width: 100%;
}
.data label{
	font-family: century gothic;
	font-size: 14px;
}
.data button{
	padding: 9px;
	margin-left: 50px;
	color: white;
	width: 130px;
	text-align: center;
	background-color: darkblue;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 3px;
	border: none;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.data button:hover{
	color: white;
	background-color: #006266;
}
.data input{
	padding: 7px;
	width: 350px;
	font-size: 14px;
	border: .5px solid gray;
	border-radius: 3px;
	background-color: #ffffff;
	font-family: century gothic;
}
.data input:focus{
	outline: none !important;
	border: 1px solid lightblue;
	font-size: 15px;
	box-shadow: 0px 0px 4px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
.table{
	width: 90%;
	margin: 20px auto;
	border-collapse: collapse;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
th{
   padding: 10px;
   font-size: 13px;
   text-align: center;
   justify-content: center;
   border: .7px gray;
   margin: 0;
   background-color:darkblue;
   color: white;

}
td{
	padding: 17px;
	font-size: 12px;
	text-align: center;
	margin: 0;
	border: .7px gray;

}
tr:nth-child(even){
	background-color: #a1c2cb;
}
tr:nth-child(odd){
	background-color:;
}
tr:hover{
	background-color: gray;
}
.view{
 font-size: 10px;
 padding: 5px;
 color: darkgreen;
 text-decoration: none;
 border: 1px solid darkgreen;
 border-radius: 3px;
 background-color:transparent;
 font-weight: bold;	
 margin: 3px;
 cursor: not-allowed;
}
.view:hover{
 color: #ffffff;
 background-color: darkgreen;	
}
.disposed{
 font-size: 10px;
 padding: 5px;
 color: darkred;
 text-decoration: none;
 border: 1px solid darkred;
 border-radius: 3px;
 background-color:transparent;
 font-weight: bold;	
 margin: 3px;
 cursor: not-allowed;
}
.disposed:hover{
 color: #ffffff;
 background-color: red;	
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
<?php 
	  session_start();
	  ob_start();
      require "database.php";
      require "function.php";

   if (isset($_POST['save'])) {

       $item = clean($_POST['item']);
       $equipment = clean($_POST['equipment']); 
       $aquisition = clean($_POST['aquisition']);
       $processor = clean($_POST['processor']);
       $memory = clean($_POST['memory']);
       $hard_disk = clean($_POST['hard_disk']);
       $LOS = clean($_POST['LOS']);
       $MSO = clean($_POST['MSO']);
       $OIS = clean($_POST['OIS']);
       $status =  "Operational";
       $are =  clean($_POST['are']);
       $serial =  clean($_POST['serial']);
       $property =  clean($_POST['property']);
       $description =  clean($_POST['description']);
       $model =  clean($_POST['model']);
       $brand =  clean($_POST['brand']);
       $value =  clean($_POST['value']);
       $user =  clean($_POST['user']);
       $designation =  clean($_POST['designation']);
       $division =  clean($_POST['division']);
       $region =  clean($_POST['region']);
       $office =  clean($_POST['office']);
       $owner =  clean($_POST['owner']);
       $date_received =  clean($_POST['date_received']);
       $sender =  clean($_POST['sender']);
       $supplier =  clean($_POST['supplier']);
       $aquisition_date =  clean($_POST['aquisition_date']);
       $remarks =  clean($_POST['remarks']);


      $query = "SELECT ITEM_NUMBER FROM inventory WHERE ITEM_NUMBER = '$item'";
      $result = mysqli_query($con,$query);

      if(mysqli_num_rows($result) == 0) {

      	$query = "INSERT INTO inventory(ITEM_NUMBER, TYPE, ACQUISITION, PROCESSOR, MEMORY, HARD_DISK, OPERATING_SYSTEM, MS_OFFICE, OTHER_INSTALLED_SOFTWARE, STATUS, ARE_NUMBER, SERIAL_NUMBER, PROPERTY_NUMBER, DESCRIPTION, MODEL, BRAND_NAME, UNIT_VALUE, END_USER, DESIGNATION, DIVISION, REGION, OFFICE, ASSET_OWNER, DATE_RECEIVED, RECEIVED_FROM, SUPPLIER, DATE_OF_AQUISITION, REMARKS) VALUES('$item','$equipment', '$aquisition','$processor', '$memory', '$hard_disk', '$LOS', '$MSO', '$OIS', '$status', '$are', '$serial', '$property', '$description', '$model', '$brand', '$value', '$user', '$designation','$division', '$region', '$office', '$owner', '$date_received', '$sender', '$supplier', '$aquisition_date', '$remarks')";

        if(mysqli_query($con, $query)) {
        	$_SESSION['location'] = "registration.php";
        	$_SESSION['prompt'] = "DATA HAS BEEN SAVE SUCCESSFULLY!";
        	header('location:registration.php');
   			exit;
        	
        } else {
          $_SESSION['location'] = "registration.php";
          $_SESSION['errprompt'] = "SERIAL NUMBER ALREADY EXIST!";
          header('location:registration.php');
   		  exit;
        	 
        }
      } else {
      	 $_SESSION['location'] = "registration.php";
      	 $_SESSION['errprompt'] = "ITEM NUMBER ALREADY EXIST!";
      	 header('location:registration.php');
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
                 header('location:registration.php');
                 exit;
       }

    } else {
    			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "OLD PASSWORD INCORRECT!";
                 header('location:registration.php');
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
		          <a href="registration.php"   id="active">
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
	
		<form class="iform" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">

			<?php 

        if(isset($_SESSION['prompt'])) {
          showmessage();
        }elseif(isset($_SESSION['errprompt'])) {
           	promptError();
           }

      ?>
			<span style="float: right; width: 100%;"><a class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="color: white; float: right;">
				<i class="fa fa-plus"></i>Equipment Type
		</a></span>
			<div class="data" style="width: 95%; margin-bottom: 20px;">
				<label>Type of ICT Equipment</label><br>
				<select name="equipment" onchange="changeformat()" id="equipment" required>
				<option style="display: none;"></option>
				<?php
				$query = "SELECT * FROM type";
				$result = mysqli_query($con, $query); 
                if ($result) {
				while ($row=mysqli_fetch_assoc($result)) {?>

				<option><?php echo $row['NAME'];?></option>
				<?php
				 }
			    }

				 ?>	
				</select>
			</div>

			<div class="data">
				<label>Serial Number</label><br>
				<input type="text" name="serial" required autocomplete="off">
			</div>
			<div class="data">
				<label>Item No.</label><br autocomplete="off">
				<input type="text" name="item" required>
			</div>
			<div class="data" id="processor">
				<label>Processor</label><br>
				<input type="text" name="processor">
			</div>
			
			<div class="data" id="memory">
				<label>Memory Size</label><br>
				<input type="text" name="memory">
			</div>
			<div class="data" id="hard_disk">
				<label>Hard Disk Size</label><br>
				<input type="text" name="hard_disk">
			</div>
			<div class="data" id="los">
				<label>Licensed Operating System</label><br>
				<input type="text" name="LOS">
			</div>
			<div class="data" id="mso">
				<label>Licensed MS Office</label><br>
				<input type="text" name="MSO">
			</div>
			<div class="data" id="ois">
				<label>Other Installed Software</label><br>
				<input type="text" name="OIS">
			</div>
			<div class="data">
				<label>Property Number</label><br>
				<input type="text" name="property">
			</div>
			<div class="data">
				<label>Type of Acquisition</label><br>
				<select name="aquisition" required>
					<option style="display: none;"></option>
					<option>Procured</option>
					<option>Turned over by PDWH Central</option>
				</select>
			</div>
			<div class="data">
				<label>ARE Number</label><br>
				<input type="text" name="are">
			</div>
			<div class="data">
				<label>Description</label><br>
				<input type="text" name="description">
			</div>
			<div class="data">
				<label>Model</label><br>
				<input type="text" name="model">
			</div>
			<div class="data">
				<label>Brand Name</label><br>
				<input type="text" name="brand">
			</div>
			<div class="data">
				<label>Unit Value / Cost</label><br>
				<input type="text" name="value">
			</div>
			<div class="data">
				<label>End User</label><br>
				<input type="text" name="user">
			</div>
			<div class="data">
				<label>Designation</label><br>
				<input type="text" name="designation">
			</div>
			<div class="data">
				<label>Division/Section</label><br>
				<select name="division">
					<option style="display: none;"></option>
					<option>Office of the District Engineer</option>
					<option>Office of the Assistant District Engineer</option>
					<option>Planning and Design Section</option>
					<option>Contruction Section</option>
					<option>Maintenance Section</option>
					<option>Quality Assurance Section</option>
					<option>Administrative Section</option>
					<option>Finance Section</option>		
				</select>
			</div>
			<div class="data">
				<label>Region</label><br>
				<select name="region">
					<option style="display: none;"></option>
					<option>National</option>
					<option>NCR</option>
					<option>CAR</option>
					<option>Region I</option>
					<option>Region II</option>
					<option>Region III</option>
					<option>Region IV-A</option>
					<option>Region IV-B</option>
					<option>Region V</option>
					<option>Region VI</option>
					<option>Region VII</option>
					<option>Region VIII</option>
					<option>Region IX</option>
					<option>Region X</option>
					<option>Region XI</option>
					<option>Region XII</option>
					<option>Region XIII</option>
				</select>
			</div>
			<div class="data">
				<label>District Office</label><br>
				<input type="text" name="office">
			</div>
			<div class="data">
				<label>Asset Owner/accountable Person</label><br>
				<input type="text" name="owner">
			</div>
			<div class="data">
				<label>Date Received</label><br>
				<input type="date" name="date_received">
			</div>
			<div class="data">
				<label>Received From</label><br>
				<input type="text" name="sender">
			</div>
			<div class="data">
				<label>Supplier</label><br>
				<input type="text" name="supplier">
			</div>
			<div class="data">
				<label>Date of Acquisition</label><br>
				<input type="date" name="aquisition_date">
			</div>
			<div class="data">
				<label>Remarks</label><br>
				<input type="text" name="remarks">
			</div>
			<div class="data">
				<label>Status</label><br>
				<select name="status" disabled style="cursor: no-drop;">
					<option>Operational</option>
					<option>Unserviceable/F or Disposal</option>
				</select>
			</div>
			<div class="data" style="width: 100%; display: flex; align-items: center; justify-content: center;">
				<button type="button" onclick="window.location.href = 'view.php';" id="back">Back</button>
				<button type="submit" name="save">Save</button>
			</div>
		</form>
	</div>
</div>
</body>
<!-- add modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title">Add New Type of Equipment</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <form class="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
		      <div class="modal-body">
		      	
			        
	  					<div class="form-group">
		    				<label for="title">Type Of Equipment</label>
		                    <input type="text" class="form-control" id="" name="name" placeholder="Type Name" required>
		                </div>
		  				<div class="form-group">
		    				<label for="description">Description</label>
		    				<textarea type="text" name="description" class="form-control" id="" placeholder="Description"></textarea>
		  				</div>
					
		      </div>
		      <div class="modal-footer">
		      	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="submit" class="btn btn-primary" name="submit">Save</button>
		        
		      </div>
		      </form>
		    </div>
		  </div>
</div>
<?php
if (isset($_POST['submit'])) {
	$name = clean($_POST['name']);
	$desc = clean($_POST['description']);
	$date = date("F d, Y");

	$query = "SELECT NAME FROM type WHERE NAME = '$name'";
      $result = mysqli_query($con,$query);

      if(mysqli_num_rows($result) == 0) {

      	$query = "INSERT INTO type(NAME, DESCRIPTION, DATE_ADDED)VALUES('$name','$desc', '$date')";

        if(mysqli_query($con, $query)) {
        	$_SESSION['location'] = "registration.php";
        	$_SESSION['prompt'] = "EQUIPMENT TYPE HAS BEEN ADD SUCCESSFULLY!";
        	header('location:registration.php');
   			exit;
        	
        } else {
          $_SESSION['location'] = "registration.php";
          $_SESSION['errprompt'] = "Unknown Error...!";
          header('location:registration.php');
   		  exit;
        	 
        }
      } else {
      	 $_SESSION['location'] = "registration.php";
      	 $_SESSION['errprompt'] = "EQUIPMENT TYPE ALREADY EXIST!";
      	 header('location:registration.php');
   		 exit;
        	
    } 
}
 ?>
<script type="text/javascript">
	function changeformat(){
		var format = document.getElementById('equipment');

		if (format.value == "Monitor" || format.value == "Printer-Single Function" || format.value == "Printer-Multifunction" || format.value == "UPS" || format.value == "Keyboard" || format.value == "Mouse") {
			document.getElementById('processor').style.display = "none";
			document.getElementById('memory').style.display = "none";
			document.getElementById('hard_disk').style.display = "none";
			document.getElementById('los').style.display = "none";
			document.getElementById('mso').style.display = "none";
			document.getElementById('ois').style.display = "none";
		}else{
			document.getElementById('processor').style.display = "block";
			document.getElementById('memory').style.display = "block";
			document.getElementById('hard_disk').style.display = "block";
			document.getElementById('los').style.display = "block";
			document.getElementById('mso').style.display = "block";
			document.getElementById('ois').style.display = "block";
	}
}
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
.iform{
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
.data input,select{
	padding: 5px;
	width: 350px;
	font-size: 12px;
	border: transparent;
	border-radius: 3px;
	background-color: #ffffff;
	font-family: century gothic;
	border: .5px solid gray;
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
	min-width: 600px;
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
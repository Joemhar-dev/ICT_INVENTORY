<?php 
	  session_start();
	  ob_start();
      require "database.php";
      require "function.php";

       if (isset($_POST['set'])) {
       	 $item = clean($_POST['item']);
      	 $serial = clean($_POST['serial']);
      	 $equipment = clean($_POST['type']);
      	 $acquisition = clean($_POST['acquisition']);
      	 $processor = clean($_POST['processor']);
      	 $memory = clean($_POST['memory']);
      	 $hard_disk = clean($_POST['hard_disk']);
      	 $los = clean($_POST['los']);
      	 $mso = clean($_POST['mso']);
      	 $ois = clean($_POST['ois']);
      	 $are = clean($_POST['are']);
      	 $property = clean($_POST['property']);
      	 $model = clean($_POST['model']);
      	 $brand = clean($_POST['brand']);
      	 $cost = clean($_POST['cost']);
      	 $user =  clean($_POST['user']);
       	 $designation =  clean($_POST['designation']);
	     $division =  clean($_POST['division']);
	     $region =  clean($_POST['region']);
	     $office =  clean($_POST['office']);
	     $owner = clean($_POST['owner']);
	     $date_received = clean($_POST['date_received']);
	     $sender = clean($_POST['sender']);
	     $supplier = clean($_POST['supplier']);
	     $acquisition_date = clean($_POST['acquisition_date']);
	     $status = "Operational";

	     $query = "SELECT ITEM_NUMBER FROM inventory WHERE ITEM_NUMBER = '$item'";
      	 $result = mysqli_query($con,$query);

      	 if(mysqli_num_rows($result) == 0) {

      	$query = "INSERT INTO inventory(ITEM_NUMBER, TYPE, ACQUISITION, PROCESSOR, MEMORY, HARD_DISK, OPERATING_SYSTEM, MS_OFFICE, OTHER_INSTALLED_SOFTWARE, STATUS, ARE_NUMBER, SERIAL_NUMBER, PROPERTY_NUMBER, MODEL, BRAND_NAME, UNIT_VALUE, END_USER, DESIGNATION, DIVISION, REGION, OFFICE, ASSET_OWNER, DATE_RECEIVED, RECEIVED_FROM, SUPPLIER, DATE_OF_AQUISITION) VALUES('$item','$equipment', '$acquisition','$processor', '$memory', '$hard_disk', '$los', '$mso', '$ois', '$status', '$are', '$serial', '$property', '$model', '$brand', '$cost', '$user', '$designation','$division', '$region', '$office', '$owner', '$date_received', '$sender', '$supplier', '$acquisition_date')";

        if(mysqli_query($con, $query)) {

          $item = $serial;

          $sql ="DELETE FROM fixed WHERE SERIAL_NUMBER ='$item'";

          $result= mysqli_query($con,$sql);

          if ($result) {
           $_SESSION['location'] = "fixed_item.php";
           $_SESSION['prompt'] = "SUCCESSFULLY USED!";
           header('location:fixed_item.php');
           exit;
            }
            else{
               die(mysqli_error($con));
            }  
        	
        } else {
			die(mysqli_error($con));
        }
      }else {
      	  $_SESSION['location'] = "fixed_item.php";
          $_SESSION['errprompt'] = "Item Number Is Being Used!";
          header('location:fixed_item.php');
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
		          <a href="fixed_item.php" id="active">
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
	
		<div class="con">
				<label>SEARCH:</label>
				<input type="text" name="search" id="search" placeholder="" autocomplete="off">
				<button type="submit" onclick="window.location.href = 'print_fixed.php';">Print Report</button>
			</div>
			<?php 
  if(isset($_SESSION['prompt'])) {
          showmessage();
        }elseif(isset($_SESSION['errprompt'])) {
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
			<th>ACTION</th>
		</tr>
	</thead>
	<tbody>
<?php
$query = "SELECT * FROM fixed";
$result = mysqli_query($con, $query); 
if ($result) {
	while ($row=mysqli_fetch_assoc($result)) {

        $item = $row['ITEM_NUMBER'];
        $equipment =$row['TYPE_OF_EQUIPMENT'];
        $serial = $row['SERIAL_NUMBER']; 
        $brand = $row['BRAND_NAME'];
        $model = $row['MODEL'];

 ?>

      <tr>
         <td class="item"><?php echo $item;?></td>
         <td class="type"><?php echo $equipment;?></td>
         <td class="serial"><?php echo $serial;?></td>
         <td class="model"><?php echo $model;?></td>
         <td class="brand"><?php echo $brand;?></td>
         <td class="acquisition" style="display: none;"><?php echo $row['ACQUISITION']?></td>
         <td class="processor" style="display: none;"><?php echo $row['PROCESSOR']?></td>
         <td class="memory" style="display: none;"><?php echo $row['MEMORY']?></td>
         <td class="hard_disk" style="display: none;"><?php echo $row['HARD_DISK']?></td>
         <td class="los" style="display: none;"><?php echo $row['LOS']?></td>
         <td class="mso" style="display: none;"><?php echo $row['MSO']?></td>
         <td class="ois" style="display: none;"><?php echo $row['OIS']?></td>
         <td class="are" style="display: none;"><?php echo $row['ARE']?></td>
         <td class="property" style="display: none;"><?php echo $row['PROPERTY']?></td>
         <td class="cost" style="display: none;"><?php echo $row['COST']?></td>
         <td class="date_received" style="display: none;"><?php echo $row['DATE_RECEIVED']?></td>
         <td class="from" style="display: none;"><?php echo $row['RECEIVED_FROM']?></td>
         <td class="supplier" style="display: none;"><?php echo $row['SUPPLIER']?></td>
         <td class="date_acq" style="display: none;"><?php echo $row['ACQUISITION_DATE']?></td>
         <td><a class="view" data-toggle="modal" data-target="#setmodal" id="btnviewmodal" name="btnviewmodal">Use</a>
         </td>
      </tr>
<?php
    }
}
?>
	</tbody>
</table>
	</div>
</div>
<?php include "setmodal.php"; 
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
                 header('location:fixed_item.php');
                 exit;
       }

    } else {
    			 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "OLD PASSWORD INCORRECT!";
                 header('location:fixed_item.php');
                 exit;

    }

  }     
      ?>
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
<script>

		$('.view').click(function(){
		var $row = $(this).closest('tr');
		var type = $row.find('.type').text();
		var acquisition = $row.find('.acquisition').text();
		var serial = $row.find('.serial').text();
		var model = $row.find('.model').text();
		var processor = $row.find('.processor').text();
		var memory = $row.find('.memory').text();
		var hard_disk = $row.find('.hard_disk').text();
		var los = $row.find('.los').text();
		var mso = $row.find('.mso').text();
		var ois = $row.find('.ois').text();
		var are = $row.find('.are').text();
		var property = $row.find('.property').text();
		var brand = $row.find('.brand').text();
		var cost = $row.find('.cost').text();
		var date_received = $row.find('.date_received').text();
		var from = $row.find('.from').text();
		var supplier = $row.find('.supplier').text();
		var date_acq = $row.find('.date_acq').text();

		$('#type').val(type);
		$('#acquisition').val(acquisition);
		$('#serial').val(serial);
		$('#model').val(model);
		$('#processor').val(processor);
		$('#memory').val(memory);
		$('#hard_disk').val(hard_disk);
		$('#los').val(los);
		$('#mso').val(mso);
		$('#ois').val(ois);
		$('#are').val(are);
		$('#property').val(property);
		$('#brand').val(brand);
		$('#cost').val(cost);
		$('#date_received').val(date_received);
		$('#sender').val(from);
		$('#supplier').val(supplier);
		$('#acquisition_date').val(date_acq);
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
.con{
	padding: 5px;
	margin-top: 50px;
	width: 100%;
}
.con label{
	font-family: century gothic;
	font-size: 14px;
}
.con button{
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
.con button:hover{
	color: white;
	background-color: #006266;
}
.con input{
	padding: 7px;
	width: 350px;
	font-size: 14px;
	border: .5px solid gray;
	border-radius: 3px;
	background-color: #ffffff;
	font-family: century gothic;
}
.con input:focus{
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
 color: darkblue;
 text-decoration: none;
 border: 1px solid darkblue;
 border-radius: 3px;
 background-color:transparent;
 font-weight: bold;	
 margin: 3px;
 cursor: pointer;
}
.view:hover{
 color: #ffffff;
 text-decoration: none;
 background-color: blue;	
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
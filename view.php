<?php 
      session_start();
      ob_start();
      require "database.php";
      require "function.php";

  	if (isset($_POST['delete'])) {
 	$item = $_POST['itemdelete'];
  $query = "SELECT * FROM inventory WHERE ITEM_NUMBER ='$item'";
  $transfer = mysqli_query($con,$query);

      if ( $row = mysqli_fetch_assoc($transfer)) {

         $item = $row['ITEM_NUMBER'];
         $equipment = $row['TYPE']; 
         $aquisition =  $row['ACQUISITION'];
         $processor =  $row['PROCESSOR'];
         $memory =  $row['MEMORY'];
         $hard_disk =  $row['HARD_DISK'];
         $LOS =  $row['OPERATING_SYSTEM'];
         $MSO = $row['MS_OFFICE'];
         $OIS =  $row['OTHER_INSTALLED_SOFTWARE'];
         $status =   $row['STATUS'];
         $are =  $row['ARE_NUMBER'];
         $serial =  $row['SERIAL_NUMBER'];
         $property =   $row['PROPERTY_NUMBER'];
         $description =   $row['DESCRIPTION'];
         $model =   $row['MODEL'];
         $brand =   $row['BRAND_NAME'];
         $value =   $row['UNIT_VALUE'];
         $user =   $row['END_USER'];
         $designation =   $row['DESIGNATION'];
         $division =   $row['DIVISION'];
         $region =  $row['REGION'];
         $office =   $row['OFFICE'];
         $owner =  $row['ASSET_OWNER'];
         $date_received =   $row['DATE_RECEIVED'];
         $sender =   $row['RECEIVED_FROM'];
         $supplier =   $row['SUPPLIER'];
         $aquisition_date =   $row['DATE_OF_AQUISITION'];
         $remarks =   $row['REMARKS'];

         $save = "INSERT INTO unserviceable(ITEM_NUMBER, TYPE, SERIAL_NUMBER, MODEL, BRAND_NAME,ACQUISITION,PROCESSOR,MEMORY,HARD_DISK,LOS,MSO,OIS,ARE,PROPERTY,DESCRIPTION,COST,USER,DESIGNATION,DIVISION,DISTRICT, REGION, OWNER, DATE_RECEIVED,RECEIVED_FROM,SUPPLIER,ACQUISITION_DATE,REMARKS ) VALUES('$item','$equipment', '$serial', '$model', '$brand', '$aquisition','$processor','$memory','$hard_disk','$LOS','$MSO','$OIS','$are','$property','$description','$value','$user','$designation','$division','$office','$region','$owner','$date_received','$sender','$supplier','$aquisition_date','$remarks')";
         if(mysqli_query($con, $save)) {

          $ditem = $item;

          $sql ="DELETE FROM inventory WHERE ITEM_NUMBER ='$ditem'";

          $result= mysqli_query($con,$sql);

                if ($result) {
                   header('location:view.php?message=removesuccess');
                }else{
                  die(mysqli_error($con));
                }  
      			}else{
         				 die("Error with the query in the database");
      			     }
     		 }else{
                  die(mysqli_error($con));
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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<script>
			setTimeout(function(){
				document.getElementById('alert').style.display = "none";
			},3000);
			
</script>
<body>
	<?php 

	include "header.php";
	include "viewmodal.php"; 
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
                 header('location:view.php');
                 exit;
       }

    } else {
                 $_SESSION['location'] = "view.php";
                 $_SESSION['errprompt'] = "INCORRECT OLD PASSWORD!";
                 header('location:view.php');
                 exit;
    }

  } 

	?>
<?php 

        if(isset($_SESSION['prompt'])) {
          showmessage();
        }elseif(isset($_SESSION['errprompt'])) {
           	promptError();
           }

      ?>
<div class="container">
	<div class="menus" id="menu">
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
		          <a href="view.php" id="active">
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
		if (isset($_GET['message'])) { 
			if ($_GET['message'] == "incorrectpw") {?>
			<div class="alert alert-danger text-center" role="alert" id="alert">
				
				<?php echo "INCORRECT OLD PASSWORD!"; ?>
			</div>
              <?php
				}elseif ($_GET['message'] == "notmatch") {?>
			<div class="alert alert-danger text-center" role="alert" id="alert">
				
				<?php echo "PASSWORD NOT MATCH!"; ?>
			</div>
              <?php
				}elseif ($_GET['message'] == "removesuccess") { ?>
			<div class="alert alert-success text-center" role="alert" id="alert">
				
				<?php echo "ITEM REMOVED SUCCESSFULLY!"; ?>
			</div>
              <?php
				}
		}

      ?>
      <form method="POST">
		<div class="data">
				<label>SEARCH:</label>
				<input type="text" name="search" id="search" placeholder="" autocomplete="off">
				<button class="print" type="submit" name="print">Print Report</button>
			</div>
		</form>
 <?php
	if(isset($_POST['print'])) {

    $_SESSION['user'] = $_POST['search'];

      header("location:report.php");
      exit;
    }
	?>
<table class="table" id="ready">
	<thead>
		<tr>
			<th>ITEM NO.</th>
			<th>TYPE OF ICT EQUIPMENT</th>
			<th>SERIAL NUMBER</th>
			<th>BRAND NAME</th>
			<th>MODEL</th>
			<th>ASSET OWNER</th>
			<th>END USER</th>
			<th>DESIGNATION</th>
			<th>SECTION/UNIT</th>
			<th>STATUS</th>
			<th id="action">ACTION</th>
		</tr>
	</thead>
	<tbody>
<?php
$query = "SELECT * FROM inventory ORDER BY ID DESC";
$result = mysqli_query($con, $query); 
if ($result) {
	while ($row=mysqli_fetch_assoc($result)) {
		$item = $row['ITEM_NUMBER'];
        $status = $row['STATUS'];
        $serial = $row['SERIAL_NUMBER']; 
        $user = $row['END_USER'];
        $designation = $row['DESIGNATION'];
        $division = $row['DIVISION'];
        $owner = $row['ASSET_OWNER'];
        $model = $row['MODEL'];
 ?>

      <tr>
         <td class="item"><?php echo $item?></td>
         <td class="type"><?php echo $row['TYPE']?></td>
         <td class="serial"><?php echo $serial;?></td>
         <td class="brand"><?php echo $row['BRAND_NAME']?></td>
         <td class="model"><?php echo $model;?></td>
         <td class="owner"><?php echo $owner;?></td>
         <td class="user"><?php echo $user;?></td>
         <td class="designation"><?php echo $designation;?></td>
         <td class="division"><?php echo $division;?></td>
         <td class="acquisition" style="display: none;"><?php echo $row['ACQUISITION']?></td>
         <td class="processor" style="display: none;"><?php echo $row['PROCESSOR']?></td>
         <td class="memory" style="display: none;"><?php echo $row['MEMORY']?></td>
         <td class="hard_disk" style="display: none;"><?php echo $row['HARD_DISK']?></td>
         <td class="los" style="display: none;"><?php echo $row['OPERATING_SYSTEM']?></td>
         <td class="mso" style="display: none;"><?php echo $row['MS_OFFICE']?></td>
         <td class="ois" style="display: none;"><?php echo $row['OTHER_INSTALLED_SOFTWARE']?></td>
         <td class="are" style="display: none;"><?php echo $row['ARE_NUMBER']?></td>
         <td class="property" style="display: none;"><?php echo $row['PROPERTY_NUMBER']?></td>
         <td class="cost" style="display: none;"><?php echo $row['UNIT_VALUE']?></td>
         <td class="district" style="display: none;"><?php echo $row['DIVISION']?></td>
         <td class="region" style="display: none;"><?php echo $row['REGION']?></td>
         <td class="date_received" style="display: none;"><?php echo $row['DATE_RECEIVED']?></td>
         <td class="from" style="display: none;"><?php echo $row['RECEIVED_FROM']?></td>
         <td class="supplier" style="display: none;"><?php echo $row['SUPPLIER']?></td>
         <td class="date_acq" style="display: none;"><?php echo $row['DATE_OF_AQUISITION']?></td>
         <td ><?php 
         $a = $status;
         if ($a == "Operational") {
         	echo "<font color=green>",$status;
         }else{
         	echo "<font color=red>",$status;
         }
         ?></td>
         <td style="display:flex;" id="hide">
         	<a class="view" data-toggle="modal" data-target="#myModal" id="btnviewmodal" name="btnviewmodal">View</a>
         	<a class="delete" data-toggle="modal" data-target="#modalmessage" id="deletemodal" name="deletemodal">Remove</a></td>
      </tr>
<?php
    }
}
?>
	</tbody>
</table>
</div>
</div>
<div class="modal fade" id="modalmessage" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <form class="form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="POST">
        <div class="modal-body">
          		<span style="width: 280px; background: transparent; border: none; font-size: 23px;"> Delete Selected Item!</span>
          		<input type="text" style="display: none;" id="itemdelete" name="itemdelete">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
          <button type="submit" class="btn btn-success" name="delete">Yes</button>
        </div>
        </form>
      </div>
      
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
			$('#ready tr').each(function(){
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
	$('.delete').click(function(){

			var $row = $(this).closest('tr');
			var itemd = $row.find('.item').text();

			$('#itemdelete').val(itemd);

		});
</script>
<script>

		$('.view').click(function(){
		var $row = $(this).closest('tr');
		var item = $row.find('.item').text();
		var type = $row.find('.type').text();
		var acquisition = $row.find('.acquisition').text();
		var serial = $row.find('.serial').text();
		var model = $row.find('.model').text();
		var owner = $row.find('.owner').text();
		var user = $row.find('.user').text();
		var designation = $row.find('.designation').text();
		var division = $row.find('.division').text();
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
		var district = $row.find('.district').text();
		var region = $row.find('.region').text();
		var date_received = $row.find('.date_received').text();
		var from = $row.find('.from').text();
		var supplier = $row.find('.supplier').text();
		var date_acq = $row.find('.date_acq').text();

		$('#item').val(item);
		$('#type').val(type);
		$('#acquisition').val(acquisition);
		$('#serial').val(serial);
		$('#model').val(model);
		$('#owner').val(owner);
		$('#user').val(user);
		$('#designation').val(designation);
		$('#division').val(division);
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
		$('#district').val(district);
		$('#region').val(region);
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
.data{
	padding: 5px;
	margin-top: 50px;
	width: 100%;
}
.data label{
	font-family: century gothic;
	font-size: 14px;
}
.print{
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
.print:hover{
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
	width: 100%;
	margin: 20px auto;
	border-collapse: collapse;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
}
th{
   padding: 10px;
   font-size: 12px;
   text-align: center;
   justify-content: center;
   border: .7px gray;
   margin: 0;
   background-color:darkblue;
   color: white;

}
td{
	padding: 10px;
	font-size: 10px;
	text-align: center;
	justify-content: center;
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
	background-color: lightgray;
}
.delete{
 font-size: 10px;
 padding: 5px;
 color: darkred;
 text-decoration: none;
 border: 1px solid darkred;
 border-radius: 3px;
 cursor: pointer;
 background-color:transparent;
 font-weight: bold;	
 margin: 2px;
}
.delete:hover{
 color: #ffffff;
 background-color: darkred;	
 text-decoration: none;
}
.view{
 font-size: 10px;
 padding: 5px;
 color: darkgreen;
 text-decoration: none;
 border: 1px solid darkgreen;
 border-radius: 3px;
 cursor: pointer;
 background-color:transparent;
 font-weight: bold;	
 margin:2px;
}
.view:hover{
 color: #ffffff;
 text-decoration: none;
 background-color: darkgreen;	
}
.container{
	width: 100%;
	padding-top: 100px;
	background-color: transparent;
	display: flex;
	padding-left: 0;
	padding-right: 0;
}
.menus{
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
.menus a{
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
.menus a:hover{
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
  
            .menus{
                width:250px;
            }
            .menus a, .sub li a{
            	width: 250px;
            	font-size: 15px;
            }
            .content{
            	margin-left: 255px;
            	padding: 15px;
            }
        }
</style>
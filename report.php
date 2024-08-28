<?php 
session_start();
ob_start();
?>
<!DOCTYPE html>
<html>
<head>
	<title>DPWH LEYTE 3RD DEO ICT EQUIPMENT INVENTORY</title>
	<link rel="icon" href="pictures/logo.png" type="image/x-icon">
</head>
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
<body onload="print()">
<?php include "header.php" ?>
<div class="content">
	<center>
	<h3>(Operational Items)</h3>
	</center>
	<table id="ready" class="print">
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
		</tr>
	</thead>
	<tbody>
		<?php
		include 'database.php';
		$search = $_SESSION['user'];

		$query = "SELECT * FROM inventory WHERE ASSET_OWNER LIKE '%$search%' OR TYPE LIKE '%$search%' OR DIVISION LIKE '%$search%'";
		$result = mysqli_query($con, $query);

		while ($row = mysqli_fetch_array($result)) {
		$item = $row['ITEM_NUMBER'];
        $equipment =$row['TYPE'];
        $brand = $row['BRAND_NAME'];
        $status = $row['STATUS'];
        $serial = $row['SERIAL_NUMBER']; 
        $user = $row['END_USER'];
        $designation = $row['DESIGNATION'];
        $division = $row['DIVISION'];
        $owner = $row['ASSET_OWNER'];
        $model = $row['MODEL'];
 ?>

      <tr>
         <td><?php echo $item;?></td>
         <td><?php echo $equipment;?></td>
         <td><?php echo $serial;?></td>
         <td><?php echo $brand;?></td>
         <td><?php echo $model;?></td>
         <td><?php echo $owner;?></td>
         <td><?php echo $user;?></td>
         <td><?php echo $designation;?></td>
         <td><?php echo $division;?></td>
      </tr>
<?php
    }
?>
	</tbody>
	</table>
</div>
</body>
</html>
<style type="text/css">
*{
	margin: 0;
	padding: 0;
}
body{
	background-repeat: no-repeat;
    background-size: cover;
	position: relative;
}
.content{
	width: 100%;
	display: flex;
	flex-direction: column;
}
.print{
	margin-top: 50px;
	width: 100%;
	border-collapse: collapse;
}
h3{
	color: darkgreen;
}
th{
   padding: 10px;
   font-size: 13px;
   text-align: center;
   justify-content: center;
   margin: 0;
   border: .1px solid gray;
   background-color:darkblue;
   color: black;
}
td{
	padding: 5px;
	font-size: 12px;
	text-align: center;
	margin: 0;
	border: .1px solid gray;

}
tr:nth-child(even){
	background-color: #a1c2cb;
}
tr:nth-child(odd){
	background-color:;
}
.header{
	position: relative;
	padding: 5px;
	text-align: center;
	color: darkblue;
	text-shadow:none; 
	font-family:century gothic;
	align-items: center;
	display: flex;
	justify-content: center;
}
h1{
	font-size: 20px;
}
img{
	width: 60px;
	height: 60px;
	margin-right: 15px;
	border-radius: 100%;
}
</style>
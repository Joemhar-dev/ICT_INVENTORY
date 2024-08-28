<!DOCTYPE html>
<html>
<head>
	<title>DPWH LEYTE 3RD DEO ICT EQUIPMENT INVENTORY</title>
	<link rel="icon" href="pictures/logo.png" type="image/x-icon">
</head>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<body onload="print()">
<?php include "header.php" ?>
<div class="content">
	<center>
	<h3>(Unserviceable Items)</h3>
	</center>
	<table id="ready" class="print">
		<thead>
		<tr>
			<th>ITEM NO.</th>
			<th>TYPE OF ICT EQUIPMENT</th>
			<th>SERIAL NUMBER</th>
			<th>MODEL</th>
			<th>BRAND NAME</th>
		</tr>
	</thead>
	<tbody>
		<?php
		include 'database.php';
		$query = "SELECT * FROM unserviceable";
		$result = mysqli_query($con, $query);

		while ($row = mysqli_fetch_array($result)) {
		$item = $row['ITEM_NUMBER'];
        $equipment =$row['TYPE'];
        $serial = $row['SERIAL_NUMBER']; 
        $user = $row['BRAND_NAME'];
        $model = $row['MODEL'];
 ?>

      <tr>
         <td><?php echo $item;?></td>
         <td><?php echo $equipment;?></td>
         <td><?php echo $serial;?></td>
         <td><?php echo $model;?></td>
         <td><?php echo $user;?></td>
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
	color: darkred;
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
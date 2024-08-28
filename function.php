
<?php 

	function clean($data) {
		$data = trim($data);
		$data = stripslashes($data);

		return $data;
	}

	function promptError(){ ?>
		<div class='error' id="box"><h4><?php echo $_SESSION['errprompt'];?></h4>
		<button onclick ="window.location.href = '<?php echo $_SESSION['location'];?>'">OK</button>
		</div>
		<script>
			setTimeout(function(){
				document.getElementById('box').style.display = "none";
			},3000);
			
		</script>

		<?php
	}
	function showmessage(){ ?>
		<div class='message' id="box"><h4><?php echo $_SESSION['prompt'];?></h4>
		<button onclick ="window.location.href = '<?php echo $_SESSION['location'];?>'">OK</button>
		</div>
		<script>
			setTimeout(function(){
				document.getElementById('box').style.display = "none";
			},3000);
			
		</script>
		<?php
	}

?>
<!-- Confirmation Message -->
<style type="text/css">
.message{
	width: 350px;
	background: #dff9fb;
	border-radius: 5px;
	padding-top: 50px;
	padding-bottom: 20px;
	position: fixed;
	border: 1px solid green;
	top: 10%;
	left: 50%;
	transform: translate(-50%,-50%);
	text-align: center;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20)
}
.message h4{
	color: darkgreen;
}
.message button{
	padding: 10px;
	margin-top: 50px;
	width: 100px;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 5px;
	border: none;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
	background-color: green;
	color: white;
}
.error{
	width: 350px;
	background: #dff9fb;
	border-radius: 5px;
	border: 1px solid red;
	padding-top: 50px;
	padding-bottom: 20px;
	position: fixed;
	top: 10%;
	left: 50%;
	transform: translate(-50%,-50%);
	text-align: center;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20)
}
.error h4{
	color: red;
}
.error button{
	padding: 10px;
	margin-top: 50px;
	width: 100px;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	border-radius: 5px;
	border: none;
	box-shadow: 5px 5px 10px 0 rgba(0,0,0.3),0 7px 21px 0 rgba(0,0,0,0.20);
	background-color: red;
	color: white;
}
</style>
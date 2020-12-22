<?php
	include('conn.php');
	$email = $_POST['email'];
	$password = $_POST['password'];
	$sql = "SELECT `CID`,`Email`,`password` FROM `customer` WHERE `Email` = '".$email."'";
	$result = mysqli_query($conn, $sql);
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)){
			if($password == $row['password']){
				session_start();
				$_SESSION["CID"] = $row["CID"];
				$_SESSION['email'] = $row["email"];
				header("Location: add.php");
			}
		}
	}
	else{
		header("Location: login.php");
	}
?>
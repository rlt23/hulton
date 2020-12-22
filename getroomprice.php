<?php
	include("conn.php");
	$hotelid = $_GET["hotelid"];
	$roomtype = $_GET["roomtype"];

	$sql = "SELECT `Price` FROM `room` WHERE `hotelid` = '".$hotelid."' AND `Rtype` = '".$roomtype."'";
	$result = mysqli_query($conn, $sql);
	while($row = mysqli_fetch_assoc($result)){
		echo $row['Price'];
		break;
	}
?>
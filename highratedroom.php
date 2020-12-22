<?php
	include 'conn.php';
	$indate = $_GET["indate"];
	$outdate = $_GET["outdate"];
	$sql = "SELECT `room`.`HotelID`,`room`.`Rtype` from room NATURAL JOIN room_reservation NATURAL join room_review where `room_review`.`HotelID` IN (select `HotelID` from room_review where Rating IN (select MAX(rating) from room_review group by HotelID)) AND `room_reservation`.`CheckInDate` BETWEEN '$indate' and  '$outdate'";

	$result = mysqli_query($conn, $sql);
	$data = array();
	$i =0;
	while ($row = mysqli_fetch_assoc($result)) {
		$data[$i] = $row['HotelID']." ".$row['Rtype'];
		$i = $i + 1;
	}

	echo json_encode($data); 
?>
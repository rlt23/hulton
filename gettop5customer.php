<?php
	include 'conn.php';
	$indate = $_GET["indate"];
	$outdate = $_GET["outdate"];
	// $sql = "SELECT DISTINCT SUM(`reservation`.`Amount`), `customer`.`Name` FROM `customer`, `reservation`, `room_reservation` WHERE `room_reservation`.`InvoiceNo` IN (SELECT `InvoiceNo` FROM `room_reservation` WHERE `CheckInDate` BETWEEN '$indate' and '$outdate') and `customer`.`CID` = `reservation`.`CID` and `room_reservation`.`InvoiceNo` = `reservation`.`InvoiceNo` GROUP BY `customer`.`Name` DESC LIMIT 5";

	$sql = "SELECT DISTINCT SUM(`reservation`.`Amount`) AS total, `customer`.`Name` FROM `customer`, `reservation`, `room_reservation` WHERE `room_reservation`.`InvoiceNo` IN (SELECT `InvoiceNo` FROM `room_reservation` WHERE `CheckInDate` BETWEEN '$indate' and  '$outdate') and `customer`.`CID` = `reservation`.`CID` and `room_reservation`.`InvoiceNo` = `reservation`.`InvoiceNo` GROUP BY `customer`.`Name` order by total DESC LIMIT 5";


	$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
	// print_r($result);	
	$data = array();
	$i = 0;
	while ($row = mysqli_fetch_assoc($result)) {
		$data[$i] = $row["Name"];
		$i = $i + 1;
	}

	echo json_encode($data); 
?>

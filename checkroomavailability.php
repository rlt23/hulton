<?php
	include("conn.php");
	$checkindate = $_GET["checkindate"];
	$checkoutdate = $_GET["checkoutdate"];
	$hotelid = $_GET["hotelid"];
	$roomtype= $_GET["roomtype"];
	$sql = "SELECT `RoomNo` FROM `room` WHERE `HotelID` = '$hotelid' AND `Rtype` = '$roomtype' AND `room`.`RoomNo` NOT IN ( SELECT `room_reservation`.`RoomNo` FROM `room_reservation` WHERE `HotelID` = '$hotelid' AND `CheckInDate` BETWEEN '$checkindate' AND '$checkoutdate' OR `CheckOutDate` BETWEEN '$checkindate' AND '$checkoutdate' )";
	// $sql = "SELECT `RoomNo` FROM `room` WHERE `HotelID` = '563149' AND `Rtype` = 'Deluxe' AND `room`.`RoomNo` NOT IN ( SELECT `room_reservation`.`RoomNo` FROM `room_reservation` WHERE `HotelID` = '563149' AND `CheckInDate` BETWEEN '2019-12-11' AND '2019-12-18' OR `CheckOutDate` BETWEEN '2019-12-11' AND '2019-12-18' )";
	$result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
	while($row = mysqli_fetch_assoc($result)){
		echo $row["RoomNo"];
		break;
	} 

?>
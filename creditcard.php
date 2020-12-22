<html>
<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

</head>
<body>
<?php include ('Templates/header.php'); ?>
	<section class="container grey-text">
		<h4 class="center">Payment</h4>
			<label> Enter Credit card number</label>
			<input id="cnumber" type="text" maxlength="16" name="CNumber" required>
			<label> Credit Card Type </label>
			<input id="ctype" type="text" name="CType" required>
			<label> CVV</label>
			<input id="cvv" type="text" maxlength="3" name="Code">
			<label>Name on card</label>
			<input id="nameoncard" type="text" name="Name">
			<label>Expiry date</label>
			<input id="expdate" type="date" min="2019-12-05" name="ExpDate">
			<div class="center">
			<input id="submit" type="submit" name="submit" value="PAY">
		</div>
	</section>
	<?php include ('Templates/footer.php'); ?>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	 <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
	<script type="text/javascript">
	 	$(document).ready(function(){
	 		$("#submit").click(function(){
	 			dataString = "services="+localStorage.getItem("services")+"&mealtype="+localStorage.getItem("mealtype")+"&quantityofbreakfast="+localStorage.getItem("quantityofbreakfast")+"&roomtype="+localStorage.getItem("roomtype")+"&checkindate="+localStorage.getItem("checkindate")+"&checkoutdate="+localStorage.getItem("checkoutdate")+"&hotelid="+localStorage.getItem("hotelid")+"&roomno="+localStorage.getItem("roomno")+"&cnumber="+document.getElementById("cnumber").value+"&ctype="+document.getElementById("ctype").value+"&cvv="+document.getElementById("cvv").value+"&nameoncard="+document.getElementById("nameoncard").value+"&expdate="+document.getElementById("expdate").value+"&price="+localStorage.getItem('price');
	 			dataString = encodeURI(dataString);
	 			console.log(dataString);
	 			$.ajax({
	 				url: "http://localhost/hulton/book.php?"+dataString,
	 				success: function(result){
	 					alert ("done");
	 				}
	 			});
	 		});
	 	});
	</script>
</body>
</html>
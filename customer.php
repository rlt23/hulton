<?php
	if(isset($_POST['submit'])){
		if(empty($_POST['Email'])){
			echo'An email is required <br />';
		}else{
			$email =$_POST['Email'];
			if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
				echo 'Please enter a valid Email id!';
			}
		}
	}


?>

<!DOCTYPE html>
<html>


	<?php include ('Templates/header.php'); ?>

	<section class="container grey-text">
		<h4 class="center">Hotel</h4>
		<form class="white" action="customer.php" method="POST">
		<label> Enter Name:</label>
		<input type="text" name="Name">
		<label> Enter Address</label>
		<input type="text" name="Address">
		<label> Enter Phone Number:</label>
		<input type="integer" name="PhoneNumber">
		<label> Enter Email:</label>
		<input type="email" name="Email">
		<div class="center">
			<input type="submit" name="submit" value="submit" class="btn brand z-depth-0">
		</div>
	</form>
	</section>

	<?php include ('Templates/footer.php'); ?>	

</html>
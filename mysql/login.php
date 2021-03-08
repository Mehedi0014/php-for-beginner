<?php

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	//var_dump($_POST);
	//echo $username.' <br> '.$pssword;

	$connection = mysqli_connect('localhost', 'root', '', 'loginapp');

	if ($connection == true) {
		echo "Mysqul is conntectd";
	} else {
		die('connection failed');
	}
}





?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/style.css">
	<title>Document</title>
</head>
<body>



	<div class="container">
		<div class="row">
			<div class="col-6">
				<form action="login.php" method="post">
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" class="form-control" id="username" name="username">
					</div>
					<div class="form-group">
						<label for="password">Password </label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					<input type="submit" class="btn btn-primary" name="submit" value="Submit">
				</form>
			</div>
		</div>
	</div>
	






</body>
</html>
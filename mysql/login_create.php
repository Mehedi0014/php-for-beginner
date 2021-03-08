<?php
include("db.php");

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];	

	if ($username == '' || $password == '') {
		echo "No username and passowrd found";
	} else {

		$query = "INSERT INTO users(username,password) ";
		$query .= "VALUES('$username','$password')";


		$result = mysqli_query($connection,$query);

		if (!$result) {
			die('query failed'. mysqli_error($connection));
		}

		$username = '';
		$password = '';
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
				<form action="login_create.php" method="post">
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
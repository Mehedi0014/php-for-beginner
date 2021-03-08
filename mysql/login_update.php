<?php
	//include("db.php");
	include("functions.php");

	if(isset($_POST['submit'])){
		$username = $_POST['username'];
		$password = $_POST['password'];
		$id = $_POST['id'];

		$query = "UPDATE users SET ";
		$query .= "username = '$username', ";
		$query .= "password = '$password' ";
		$query .= "WHERE id = $id";

		$result = mysqli_query($connection, $query);
		if (!$result) {
			die('Query Failed' . mysqli_error($connection));
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
				<form action="login_update.php" method="post">
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" class="form-control" id="username" name="username">
					</div>
					<div class="form-group">
						<label for="password">Password </label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					<div class="form-group">
						<select name="id" id="">
							<?php showAllData(); ?>							
						</select>
					</div>
					<input type="submit" class="btn btn-primary" name="submit" value="Update">
				</form>
			</div>
		</div>
	</div>
</body>
</html>
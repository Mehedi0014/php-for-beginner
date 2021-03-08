<?php
	include("db.php");
	
	$query = "SELECT * FROM users";

	$result = mysqli_query($connection, $query);
	
	if (!$result) {
		die('query failed'. mysqli_error());
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
				<?php
					while( $row = mysqli_fetch_assoc($result)){
						echo "<pre>";
						print_r($row);
						echo "</pre>";
					}

				?>
			</div>
		</div>
	</div>

</body>
</html>
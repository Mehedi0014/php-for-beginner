<?php
	$name = 'SomeName';
	$value = 100;
	$expiration = time() + (60*60*24*7);

	setcookie($name, $value, $expiration);
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
			<?php
				if (isset($_COOKIE["SomeName"])) {
					$someOne =  $_COOKIE["SomeName"];
					echo $someOne;
				} else {
					$someOne = "";
				}
			?>
		</div>
	</div>
	






</body>
</html>
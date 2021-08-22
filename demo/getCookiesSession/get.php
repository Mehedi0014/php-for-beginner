<?php
print_r($_GET);
echo "<br/>";

$name = $_GET['name'];
echo "My name is : " . $name;
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="../assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="../assets/css/style.css">
	<title>Global GET</title>
</head>
<body>



	<div class="container">
		<div class="row">

				<?php $id = 100; ?>
				<?php $name = "Md. Mehedi Hassan"; ?>
			
				<a href="get.php?id=<?php echo $id; ?>&name=<?php echo $name; ?>" class="btn btn-primary">Click Here</a>
		</div>
	</div>
	






</body>
</html>
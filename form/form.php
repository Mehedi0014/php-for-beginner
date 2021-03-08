<?php

if (isset($_POST['submit'])) {

	$nameList = ['jodu', 'modu', 'ram', 'sam', 'mehedi'];
	
	$username = $_POST['username'];
	$password = $_POST['password'];

	if (in_array($username, $nameList)) {
		echo $username;
		echo "<br>";
		echo $password;
	} else {
		echo "No name found";
	}

	

}



?>



<form action="form.php" method="post">
	<input type="text" name="username" placeholder="Name">
	<br>
	<input type="text" name="password" placeholder="Passowrd">
	<br>
	<input type="submit" value="submit" name="submit">
</form>
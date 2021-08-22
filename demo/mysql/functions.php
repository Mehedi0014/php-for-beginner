<?php
include("db.php");

function createRows(){
	if (isset($_POST['submit'])) {
		global $connection;

		$username = $_POST['username'];
		$password = $_POST['password'];

		$username = mysqli_real_escape_string($connection, $username);	
		$password = mysqli_real_escape_string($connection, $password);

		$hashFormat = "$2y$10$";
		$salt = "iusesomecrazystrings22";
		$hashF_and_salt = $hashFormat . $salt;
		$password = crypt($password, $hashF_and_salt);

		if ($username == '' || $password == '') {
			echo "No username and passowrd found";
		} else {

			$query = "INSERT INTO users(username,password) ";
			$query .= "VALUES('$username','$password')";


			$result = mysqli_query($connection,$query);

			if (!$result) {
				die('query failed'. mysqli_error($connection));
			} else {
				echo "Record Create";
			}

			$username = '';
			$password = '';
		}
	}
}


function readRows(){
	global $connection;

	$query = "SELECT * FROM users";
	$result = mysqli_query($connection, $query);

	if (!$result) {
		die('query failed'. mysqli_error());
	}

	while( $row = mysqli_fetch_assoc($result)){
		echo "<pre>";
		print_r($row);
		echo "</pre>";
	}
}


function showAllData(){
	global $connection;
	$query = "SELECT * FROM users";
	$result = mysqli_query($connection, $query);
	if (!$result) {
		die('query failed'. mysqli_error());
	}

	while( $row = mysqli_fetch_assoc($result) ){
		$id = $row['id'];
		$username = $row['username'];
		echo "<option value='$id'>$username</option>";
	}
}


function updateTable(){
	if(isset($_POST['submit'])){
		global $connection;

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
		} else {
			echo "Record Updated";
		}
	}
}



function deleteRow(){
	if(isset($_POST['submit'])){
		global $connection;

		$username = $_POST['username'];
		$password = $_POST['password'];
		$id = $_POST['id'];

		$query = "DELETE from users ";
		$query .= "WHERE id = $id";


		$result = mysqli_query($connection, $query);
		if (!$result) {
			die('Query Failed' . mysqli_error($connection));
		} else {
			echo "Record Deleted";
		}
	}
}



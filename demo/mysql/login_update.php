<?php
	//include("db.php");
	include("functions.php");	
	updateTable();

?>


<?php include("includes/header.php"); ?>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">Update</h1>
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
<?php include("includes/footer.php"); ?>
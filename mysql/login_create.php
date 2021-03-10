<?php
include("db.php");
include("functions.php");

createRows();
?>

<?php include("includes/header.php"); ?>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center">Create</h1>
				<form action="login_create.php" method="post">
					<div class="form-group">
						<label for="username">Username</label>
						<input type="text" class="form-control" id="username" name="username">
					</div>
					<div class="form-group">
						<label for="password">Password </label>
						<input type="password" class="form-control" id="password" name="password">
					</div>
					<input type="submit" class="btn btn-primary" name="submit" value="Create">
				</form>
			</div>
		</div>
	</div>
<?php include("includes/footer.php"); ?>
<?php
	include("db.php");
	include("functions.php");


?>


<?php include("includes/header.php"); ?>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<?php readRows(); ?>
			</div>
		</div>
	</div>
<?php include("includes/footer.php"); ?>
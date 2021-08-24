<?php

	
	$file = "example.txt";

	if (file_exists($file)) {
		echo "File already exitst";
	} else {
		
		$handle = fopen($file, 'w');
		fclose($handle);
		echo "File created";
	}
?>
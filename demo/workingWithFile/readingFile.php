<?php

	$file = "example.txt";

	// if ($handle = fopen($file, 'r') ) {
	// 	echo $content = fread($handle, 3); // 10 is bite and (1 bite = 1 character)
	// 	echo $content = fread($handle, filesize($file)); // reading hole file.
	// 	fclose($handle);
	// } else {
	// 	echo "The application was not able to write on the file";
	// }

	$handle = fopen($file, 'r');
	if ($handle) {
		// echo $content = fread($handle, 2);
		echo $content = fread($handle, filesize($file));
	}

?>
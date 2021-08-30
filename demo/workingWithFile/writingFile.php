<?php

	$file = "example.txt";

	// if ($handle = fopen($file, 'w') ) {
	// 	fwrite($handle, "I love PHP");
	// 	fclose($handle);
	// } else {
	// 	echo "The application was not able to write on the file";
	// }



	$handle = fopen($file, 'w');
	$myText = "I love php very much. Do you?";

	if ($handle) {
		fwrite($handle, $myText);
	} else {
		echo "something wrong";
	}


	// fwrite(fopen('example.txt', 'w'), "I love php very much.");
 

?>
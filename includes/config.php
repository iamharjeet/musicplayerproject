<?php
	ob_start();
	session_start();

	$timezone = date_default_timezone_set("America/St_Johns");

	$con = mysqli_connect("localhost", "root", "", "musicplayerdb");

	if(mysqli_connect_errno()) {
		echo "Failed to connect: " . mysqli_connect_errno();
	}
?>
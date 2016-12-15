<?php

function query($sql) {
	$pdo = new PDO('mysql:host=localhost;dbname=kanguru', 'root', '');
	$array = [];
	foreach($pdo->query($sql) as $row) {
		unset($row[0]);
		unset($row[1]);
		unset($row[2]);
		array_push($array, $row);
	}

	return $array;
}

if(isset($_GET["mode"])) {

	switch ($_GET["mode"]) {
		case "listAll":
			$sql = "SELECT * FROM quotes";
			break;
		case "random":
			$sql = "SELECT * FROM quotes ORDER BY RAND() LIMIT 1";
			break;
		case "get":
			$sql = "SELECT * FROM quotes WHERE id = " + id;
			break;
		default:
			$sql = "SELECT * FROM quotes";
	}

	return json_encode(query($sql));
} else {
	return include("main.html");
}
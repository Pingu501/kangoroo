<?php
require __DIR__ . '/vendor/autoload.php';

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

// Your App
$app = new Bullet\App();
$app->path('/', function ($request) {
	return include("main.html");
});

$app->path('/listAll', function ($request) {

	$sql = "SELECT * FROM quotes";
	return json_encode(query($sql));
});

$app->path('/random', function ($request) {

	$sql = "SELECT * FROM quotes ORDER BY RAND() LIMIT 1";
	return json_encode(query($sql));
});

/**
 * @param POST id of requested quote
 */
$app->path('/get', function ($request) {

	$sql = "SELECT * FROM quotes WHERE id = " + id;
	return json_encode(query($sql));
});

// Run the app! (takes $method, $url or Bullet\Request object)
echo $app->run(new Bullet\Request());

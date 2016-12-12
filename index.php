<?php
require __DIR__ . '/vendor/autoload.php';

function setup() {
	return new PDO('mysql:host=localhost;dbname=kanguru', 'root', '');
}

// Your App
$app = new Bullet\App();
$app->path('/', function ($request) {
	return "Hello World!";
});

$app->path('/listAll', function ($request) {

	$pdo = setup();

	$array = [];
	foreach($pdo->query("SELECT * from quotes") as $row) {
		array_push($array, $row);
	}

	echo json_encode($array);
});

$app->path('/get/', function ($request) {

	$pdo = setup();

	$array = [];
	foreach($pdo->query("SELECT * from quotes") as $row) {
		array_push($array, $row);
	}

	echo json_encode($array);
});

// Run the app! (takes $method, $url or Bullet\Request object)
echo $app->run(new Bullet\Request());

<?php
require __DIR__ . '/vendor/autoload.php';

$pdo = new PDO('mysql:host=localhost;dbname=kanguru', 'root', '');

// Your App
$app = new Bullet\App();
$app->path('/', function($request) {
    return "Hello World!";
});

$app->path('/test', function($request) {
  return "klaus";
});

// Run the app! (takes $method, $url or Bullet\Request object)
echo $app->run(new Bullet\Request());

<?php
$host = 'localhost';
$db   = 'safebite';
$user = 'root'; // Change if you have a different MySQL username
$pass = '';     // Change if you have a MySQL password

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Could not connect to the database $db :" . $e->getMessage());
}
?>

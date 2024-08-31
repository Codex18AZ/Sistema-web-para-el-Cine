<?php

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'cine';

try {
    $conn = new PDO("mysql:host=$server;dbname=$database;",$username,$password);

} catch (PDOException $e) {
    die('Conexion Faild'.$e->getMessage());
}

?>
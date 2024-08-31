<?php 
    session_start();

    include 'conexion.php';
    require "databaseSesion.php";

    if (!empty($_POST['correo']) && !empty($_POST['password'])) {
        $query = $conn -> prepare('SELECT idUsuario, Correo, Password FROM usuario WHERE Correo = :correo');
        $query->bindParam(':correo',$_POST['correo']);
        $query->execute();

        $result = $query->fetch(PDO::FETCH_ASSOC);
        $message = '';

        if($_POST['password']==$result['Password']){
            $_SESSION['user_id'] = $result['idUsuario'];
            header("Location: ./index.php");
        }else{
            $message = "<p class='failed'>No existen sus credenciales</p>";
        }
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/sesion.css">
    <title>Iniciar Sesión</title>
</head>
<body>
    <form class="box" action="iniciarSesion.php" method="post">
        <h1>Bienvenido a CineEvents</h1>
        <h2>Iniciar Sesión</h2>
        <?php
        if (!empty($message)) {
        ?>
        <div> <?= $message ?> </div>
        <?php
        }
        ?>
        <input type="email" name="correo" placeholder="Correo">
        <input type="password" name="password" placeholder="Contraseña">
        <input type="submit" value="Iniciar sesión">
        <div class="enlace">
            <div>
            <a href="index.php">Inicio</a>
            </div>
            <div>
            <a href="registrarse.php">Registrarse</a>
            </div>
        </div>
    </form>
</body>
</html>
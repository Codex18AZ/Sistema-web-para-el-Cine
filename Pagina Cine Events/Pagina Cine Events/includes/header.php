<?php 
    session_start();

    include 'conexion.php';

    require 'databaseSesion.php';
    
    if(isset($_SESSION['user_id'])){
        $consulta = $conn -> prepare('SELECT idUsuario, Nombre, Correo, Password FROM usuario WHERE idUsuario = :id');

        $consulta -> bindParam(':id',$_SESSION['user_id']);
        $consulta -> execute();

        $result = $consulta ->fetch(PDO::FETCH_ASSOC);

        /*$user=null;
        if(count($result)>0){
            $user = $result;
        }*/
    }

?>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./imagenes/logo/Logo.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
        integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="style2.css">
    
    <title>CineEvents</title>
</head>

<body>
    <nav class="cabecera">
        <a class="display:block" href="index.php">
            <div class="titulo">
                <div class="logo">
                    <img src="imagenes/logo/Logo.png" alt="Logo">
                </div>
                <div class=letraTitulo>CineEvents</div>
            </div>
        </a>
        <div class="sesion">
            <?php
            if (!empty($result)) {
                echo "<a class='usuario'> ".$result['Nombre']."</a>
                <a class='link' href='cerrarSesion.php'>Cerrar sesión</a>";
                
            }else{
                echo "<a class='link' href='iniciarSesion.php'>Iniciar sesión</a>
                <a href='registrarse.php'>Registrarse</a>";
            }
            ?>
        </div>
    </nav>
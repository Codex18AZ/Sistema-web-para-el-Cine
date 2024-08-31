<?php 

include("Conexion.php");
    require_once("ClassDatos.php");
        
        //$id=$_GET['idPeli'];
        
        $Objeto = new Datos();
        $idUltimo=$Objeto->ultimoId();
        $rowUltimo = mysqli_fetch_array($idUltimo);
        $datoUltimo=$rowUltimo['a']+1;

    $message='';
if (isset($_POST['nombre'])) {
    # code...

    $nom=$_POST['nombre'];
    $usu=$_POST['usuario'];
    $cor=$_POST['correo'];
    $pass=$_POST['password'];
    
    $sql = "INSERT INTO usuario(idUsuario, Nombre, nombreUsuario, Correo, Password) VALUES ('$datoUltimo', '$nom', '$usu', '$cor', '$pass')";
    $res = mysqli_query($conect, $sql);
    

}
    /*
    if(!empty($_POST['nombre']) && !empty($_POST['usuario']) && !empty($_POST['correo']) && !empty($_POST['password'])){
        
        $sql = "INSERT INTO usuario (Nombre, nombreUsuario, Correo, Password) VALUES (:nombre, :usuario, :correo, :password)";

        $stmt=$conn->prepare($sql);
        $stmt->bindParam(':nombre',$_POST['nombre']);
        $stmt->bindParam(':usuario',$_POST['usuario']);
        $stmt->bindParam(':correo',$_POST['correo']);
        /*$password = password_hash($_POST['password'], PASSWORD_BCRYPT);*/
       /*/ $stmt->bindParam(':password',$_POST['password']);

        if($stmt->execute()) {
            $message = "<p class='succes'>Usuario Creado Satisfactoriamente!!</p>";
        }else{
            $message = "<p class='failed'>Comprobar Datos Registrados</p>";
        }
    }*/

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/sesion.css">
    <title>Registrarse - CineEvents</title>
</head>
<body>
    <form class="box" action="registrarse.php" method="post">
        <h1>Bienvenido a CineEvents</h1>
        <h2>Registrarse</h2>
        <?php
        if (!empty($message)) {
        ?>
        <div> <?= $message ?> </div>
        <?php
        }
        ?>
        <input type="text"  name="nombre" placeholder="Nombre">
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="email"  name="correo" placeholder="Correo">
        <input type="password" name="password" placeholder="Contraseña">
        <input type="submit" name="submit" value="Enviar">
        <div class="enlace">
            <div>
            <a href="index.php">Inicio</a>
            </div>
            <div>
            <a href="iniciarSesion.php">Iniciar Sesión</a>
            </div>
        </div>
    </form>
</body>
</html>
<?php include("includes/header.php"); ?>

<?php
 require 'databaseSesion.php';
 require_once("ClassDatos.php");
        

 $idPelicula=$_GET['idPeli'];

 $Objeto = new Datos();
 $opinion=$Objeto->ultimoIdOpinion();

 $rowIdOpinion = mysqli_fetch_array($opinion); 
 

 $message='';
 if (isset($_POST['comentario'])) {
    # code...
    $ultimoIdOpinion=$rowIdOpinion['a']+1;
    $id=$_GET['idPeli'];
    $cal=$_POST['calificacion'];
    $com=$_POST['comentario'];
    $idUsuario=$_POST['id'];
    
    $sql = "INSERT INTO opinion (idOpinion, idPelicula, Calificacion, Comentario, idUsuario) VALUES ('$ultimoIdOpinion', '$id', '$cal', '$com', '$idUsuario')";
    $res = mysqli_query($conect, $sql);
    

}

 /*
 if(!empty($_POST['id'])){
     
     $sql = "INSERT INTO opinion (idPelicula,Calificacion, Comentario, idUsuario) VALUES (:idPelicula, :calificacion, :comentario, :id)";

     $stmt=$conn->prepare($sql);
     $stmt->bindParam(':id',$_POST['id']);
     $stmt->bindParam(':idPelicula',$idPelicula);
     $stmt->bindParam(':calificacion',$_POST['calificacion']);
     $stmt->bindParam(':comentario',$_POST['comentario']);

     if($stmt->execute()) {
         $message = "<p class='succes'>Gracias por su comentario!!</p>";
         header('Location: ./DetallePelicula.php?idPeli='.$idPelicula);
     }else{
         $message = "<p class='failed'>Error en comentario</p>";
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
    <title>Iniciar Sesión</title>
</head>
<body>
    <form class="box" action="Comentario.php?idPeli=<?php echo $_GET['idPeli']; ?>"  method="post">
        <h1>CineEvents</h1>
        <?php
        if (!empty($message)) {
        ?> <div> <?= $message ?> </div>
        <?php } ?>
        <h2>Comentario de  
        <?php if (!empty($result)) {
                    echo $result['Nombre'];
                }else{
                    echo "";
                }
        ?></h2>
       
        <input type="hidden" name="id" value="
        <?php if (!empty($result)) {echo $result['idUsuario'];}else{echo "";}?>">
        <input type="number" name="calificacion" placeholder="Calificar de 1 - 5" min="1" max="5"/>
        <textarea name="comentario" rows="5" cols="30" placeholder="Ingresar Comentario"></textarea>
        <input type="submit" value="Enviar">
        <div class="enlace">
            <div>
            <a href="index.php">Inicio</a>
            </div>
            <div>
            <a href="DetallePelicula.php?idPeli=<?php echo $idPelicula; ?>">Volver</a>
            </div>
        </div>
    </form>
</body>
</html>
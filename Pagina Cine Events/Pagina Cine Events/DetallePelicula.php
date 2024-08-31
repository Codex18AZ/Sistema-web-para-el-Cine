
<head>
    <link rel="stylesheet" href="style2.css">
</head>
<?php include("includes/header.php"); ?>

<div class="contener-Detalle">
    <?php
        require_once("ClassDatos.php");
        
        $id=$_GET['idPeli'];
        
        $Objeto = new Datos();
        $pelicula=$Objeto->DetallePelicula($id);
        $reparto=$Objeto->DetalleReparto($id);
        $chat=$Objeto->chatOpinion($id);
        $cine=$Objeto->DetalleCine($id);
        $Sala=$Objeto->DetalleSala($id);
        $Cartelera=$Objeto->DetalleCartelera($id);
        $Promocion=$Objeto->DetallePromocion($id);
        
        $row = mysqli_fetch_array($pelicula);
        

        if ($row['Subtitulo'] == 1) {
            $subT="Sí";
        }else{
            $subT="No";
        }
        
        echo "<img class='imgPeliculaDetalle' src='imagenes/$id.jpg' alt=''>
        
        <div class='datos'>
            <h1 class='tituloPelicula'>".$row['Titulo']."</h1>
            <div class='contenido'>
                <div>
                    <br>
                    <b>Resumen: </b><br>".$row['Resumen']."
                    <br>
                </div>
            </div>
            <div class='columnaPelicula'>
                <div class='filaPelicula'>
                    <div>
                        <br>
                        <b>Título original: </b>".$row['tituloOriginal']."
                    </div>
                    <div>
                        <br>
                        <b>Género: </b>".$row['Genero']."
                    </div>
                    <div>
                        <br>
                        <b>Idioma original: </b>".$row['idiomaOriginal']."
                    </div>
                    <div>
                        <br>
                        <b>Subtítulos en español: </b>".$subT."
                    </div>
                    <div>
                        <br>
                        <b>País de origen: </b>".$row['paisOrigen']."
                    </div>
                </div>
                <div class='filaPelicula'>
                    <div>
                        <br>
                        <b>Año de producción: </b>".$row['añoProduccion']."
                    </div>
                    <div>
                        <br>
                        <b>Sitio oficial: </b> <a href='".$row['urlWeb']."'>Link aquí</a>
                    </div>
                    <div>
                        <br>
                        <b>Duración: </b>".$row['Duracion']."
                    </div>
                    <div>
                        <br>
                        <b>Clasificación: </b>".$row['calificacionApto']."
                    </div>
                    <div>
                        <br>
                        <b>Fecha de estreno: </b>".$row['fechaEstreno']."
                    </div>
                </div>
                <div class='filaPelicula'>
                    <div>
                        <br>
                        <b>Reparto: </b>
                        <ul> ";
                        
                        while ($rowReparto = mysqli_fetch_array($reparto)) {
                            echo"<li>".$rowReparto['nombreReparto']." (".$rowReparto['nombrePersonaje']."), ".$rowReparto['Nacionalidad'].", ".$rowReparto['Rol']." </li>";
                        }
                    echo "
                    </ul>
                    </div><br>
                </div>
            </div><br>
            
            <div class='chat'>
                <h4 class='tituloChat'>Comentarios de la pelicula</h4>";
                while ($rowChat = mysqli_fetch_array($chat)) {
                    echo"<p>".$rowChat['Comentario']." </p>";
                }

                if (!empty($result)) {
                    echo "<br><br> <p clas='textoP'>".$result['Nombre']." puede Comentar
                    <a class='link' href='Comentario.php?idPeli=$id'>Click para escribir</a></p>";
                }else{
                    echo "<br><br>Iniciar sesión para ver los comentarios";
                }
            echo "</div><br>
            

            <div class='datoPelicula'>
            <h4>Cines disponibles</h4>";
                while ($rowCine = mysqli_fetch_array($cine)) {
                    /*echo $rowCine['a']."<br>";*/
                    echo "Cine ".$rowCine['a']."<br>";
                    echo $rowCine['b']."<br>";
                    echo $rowCine['c']."<br>";
                    echo $rowCine['d']."<br><br>";
                }
            echo "</div>
            
            <div class='datoPelicula'>
                <h4>Salas de cine disponibles</h4>";
                while ($rowSala = mysqli_fetch_array($Sala)) {
                    /*echo $rowSala['a']."<br>";*/
                    echo $rowSala['b']."<br>";
                    echo $rowSala['c']." butacas<br>";
                    echo $rowSala['d']."<br><br>";
                }
            echo "</div>
            
            <div class='datoPelicula'>
                <h4>Carteleras de cines disponibles</h4>";
                while ($rowCartelera = mysqli_fetch_array($Cartelera)) {
                    /*echo $rowCartelera['a']."<br>";*/
                   
                    echo $rowCartelera['b']."<br>";
                    echo $rowCartelera['c']." <br>";
                    echo $rowCartelera['d']."<br><br>";
                }
            echo "</div>

            <div class='datoPelicula'>
            <h4>Promociones de películas disponibles</h4>";
                while ($rowPromocion = mysqli_fetch_array($Promocion)) {
                    /*echo $rowPromocion['a']."<br>";*/
                    echo "Inicio: ".$rowPromocion['b']."<br>";
                    echo "Final: ".$rowPromocion['c']."<br>";
                    echo $rowPromocion['d']."<br>";
                    /*echo $rowPromocion['e']."<br>";*/
                    echo "Cine ".$rowPromocion['f']."<br><br>";
                }
            echo "
            <br>
            <br>
            <br>
            </div>
        </div>";
    ?>

</div>
</body>
<?php include("includes/header.php"); ?>

<div class="container"> <!-- Contenedor principal -->
    <?php 
    require_once("ClassDatos.php");
        $ObjetoDatos = new Datos();
        $peliculasMostrar=$ObjetoDatos->TituloId();
        $promedioOpinion=$ObjetoDatos->Calificacion();

        while ($row = mysqli_fetch_array($peliculasMostrar) )  {
        echo "
            <div class='card'> <!-- Contenedor de una pelicula seccion -->
                <div class='imgbox' >
                    <img src='imagenes/".$row['idPelicula'].".jpg' >
                    
                </div>
                <!-- -- -- -->
                <div class='content'>
                    <div class='produname'>
                        <h3>".$row['Titulo']."</h3>
                        <a href='DetallePelicula.php?idPeli=".$row['idPelicula']."'>Mostrar detalle</a>
                    </div>
                    <div class='calificacion'>
                        <h3>Calificación: </h3><div class='calificar'>";
        ?>
        <?php 
                            
                for ($i=0; $i < $promedioOpinion[$row['idPelicula']-1]; $i++) {
                        echo "<i class='fa fa-star' aria-hidden='true'></i>";
                    }
                for ($i=0; $i < 5-$promedioOpinion[$row['idPelicula']-1]; $i++) { 
                        echo "<i class='fa fa-star grey' aria-hidden='true'></i>";
                    }
                            
    
        echo "
                        </div>
                    </div>
                </div>
            </div><!-- FIN Contenedor de una pelicula seccion -->
            ";
        }
    ?>
    <!--Fin de container-->    
    </div>
</body>
</html>
<?php

    include("Conexion.php");
    //$conecion es la conexion
    $conecion=$conect;
class Datos {
    
    public $resultado;
    public $res=[];

    public function TituloId(){
        
        global $conecion;
        $query = 'SELECT idPelicula, Titulo FROM pelicula';
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;  
    }

    public function Calificacion(){
        global $conecion;
        $query = "SELECT idPelicula, AVG(Calificacion)  FROM opinion GROUP BY idPelicula DESC"  ;
        $resultConsulta = mysqli_query($conecion, $query);

        $promedio=[];
        $i=0;
        while ($row = mysqli_fetch_array($resultConsulta)) {
            $promedio[$i]= round($row['AVG(Calificacion)']);
            $i++;
        }
        
        return $this->res = $promedio;       
    }

    public function DetallePelicula($id){
        global $conecion;
        $query = "SELECT idPelicula, Titulo, tituloOriginal, Genero, idiomaOriginal, Subtitulo, paisOrigen, añoProduccion, urlWeb, Duracion, calificacionApto, fechaEstreno, Resumen  FROM pelicula where idPelicula='$id' "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }

    public function DetalleReparto($id){
        global $conecion;
        $query = "SELECT idReparto, nombreReparto, nombrePersonaje, Nacionalidad, Rol FROM reparto where idPelicula='$id' "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }

    public function chatOpinion($id){
        global $conecion;
        $query = "SELECT Comentario FROM opinion where idPelicula='$id' AND Comentario IS NOT NULL "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
    public function DetalleCine($id){
        global $conecion;
        $query = "SELECT c.idCine as a, c.nombreCine as b, c.Direccion as c, c.Telefono as d FROM Cine  as c INNER JOIN sala_cine as s on c.idCine = s.idCine inner join cartelera as car on s.idSala = car.idSala where car.idPelicula='$id' GROUP BY c.idCine"  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
    public function DetalleSala($id){
        global $conecion;
        $query = "SELECT s.idSala as a, s.nombreSala as b, s.cantidadButacas as c, c.nombreCine as d FROM Cine  as c INNER JOIN sala_cine as s on c.idCine = s.idCine inner join cartelera as car on s.idSala = car.idSala where car.idPelicula='$id' GROUP BY s.idSala"  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }

    public function DetalleCartelera($id){
        global $conecion;
        $query = "SELECT car.idCartelera as a, car.semanaCartelera as b, car.fechaHoraPelicula as c, s.nombreSala  as d FROM Cine  as c INNER JOIN sala_cine as s on c.idCine = s.idCine inner join cartelera as car on s.idSala = car.idSala where car.idPelicula='$id' AND car.Disponible=1 "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
    
    public function DetallePromocion($id){
        global $conecion;
        $query = "SELECT p.idPromocion as a, p.fechaHoraInicio as b, p.fechaHoraFinal as c, p.Descripcion  as d, p.Descuento  as e, p.idCine  as f FROM Cine  as c  INNER JOIN promocion as p on c.idCine=p.idCine where p.idPelicula='$id' GROUP BY p.idPromocion "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
    public function ultimoIdOpinion(){
        global $conecion;
        $query = "SELECT max(idOpinion) as a FROM opinion "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
    public function ultimoId(){
        global $conecion;
        $query = "SELECT max(idUsuario) as a FROM usuario "  ;
        $resultConsulta = mysqli_query($conecion, $query);
        return $this->resultado = $resultConsulta;       
    }
}

?>
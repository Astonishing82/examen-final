<?php
    class usuarioModel {
        private $PDO;
        
        public function __construct(){
            include_once ($_SERVER['DOCUMENT_ROOT'].'/examen/routes.php');
            require_once(DAO_PATH.'database.php');
            $data = new dataConex();
            $this->PDO = $data->conexion();
        }

        public function listar() {
            $sql = 'SELECT * FROM usuarios ORDER BY idUsuario';
            $statement = $this->PDO->prepare($sql);
            return ($statement->execute()) ? $statement->fetchAll() : false;
        }        

        public function buscar($usuario) {
            $sql = 'SELECT * FROM usuarios WHERE usuario=:usuario';
            $statement = $this->PDO->prepare($sql);
            $statement->bindParam(':usuario',$usuario);        
            return ($statement->execute()) ? $statement->fetch() : false;
        }        

    }
?>
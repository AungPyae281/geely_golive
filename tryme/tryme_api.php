<?php 
	header("Access-Control-Allow-Origin: *");
	header("Content-Type: application/json; charset=UTF-8");
	  
	class Database{	 
		private $host = "localhost";
		private $db_name = "geely_db";
		private $username = "localhost";
		private $password = "";
		public $conn;
	 
		public function getConnection(){
	 
			$this->conn = null;
	 
			try{
				$this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
				$this->conn->exec("set names utf8");
			}catch(PDOException $exception){
				echo "Connection error: " . $exception->getMessage();
			}
	 
			return $this->conn;
		}
	}

	class Brand{
	    // database connection and table name
		private $conn;
		private $table_name = "brand";

	    // object properties
	    public $id;	
		public $brand;
		
		public function __construct($db){
			$this->conn = $db;
		}

		function getAllRows(){
			$query = "SELECT * FROM " . $this->table_name . " ORDER BY brand";
			$stmt = $this->conn->prepare($query);
			$stmt->execute();
			return $stmt;
		}		
	}

	  
	$database = new Database();
	$db = $database->getConnection();
	  
	$brand = new Brand($db);

	$stmt = $brand->getAllRows();
	$num = $stmt->rowCount();

	$arr = array();
	$arr["records"] = array();
	
	if($num>0){ 
		while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
			extract($row);
			$detail = array(
				"id" => (int)$id,
				"brand" => $brand
			);
			array_push($arr["records"], $detail);
		} 
	} 
	echo json_encode($arr);
?>
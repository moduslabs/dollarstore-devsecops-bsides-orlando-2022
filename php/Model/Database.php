<?php
class Database
{
    protected $connection = null;
 
    public function __construct()
    {
        /* Testing:  password was password123 */
        try {
            $this->connection = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE_NAME);
         
            if (mysqli_connect_errno()) {
                throw new Exception("Could not connect to database.");   
            }
        } catch (Exception $e) {
            throw new Exception($e->getMessage());   
        }           
    }
 
    public function select($query = "",$params = [])
    {
        try {
            $execquery = $this->executeQuery($query,$params);
            $result = $execquery->get_result()->fetch_all(MYSQLI_ASSOC);               
            $execquery->close();
 
            return $result;
        } catch(Exception $e) {
            throw New Exception($e->getMessage());
        }
        return false;
    }
 
    private function executeQuery($query="", $params=[])
    {
        try {
            $execquery = $this->connection->prepare($query);
 
            if($execquery === false) {
                throw New Exception("Unable execute: " . $query);
            }
 
            if( $params ) {
                $execquery->bind_param($params[0],$params[1]);
            }
 
            $execquery->execute();
 
            return $execquery;
        } catch(Exception $e) {
            throw New Exception($e->getMessage());
        }   
    }
}

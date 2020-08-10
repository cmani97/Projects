<?php
session_start();
class DataBase
{
    public $conn;
    public function __construct()
    {
        $this->conn=mysqli_connect('localhost','root','','svu');
        if (mysqli_connect_errno()) {
            echo "Database connection failed";
            exit;
        }
        else
        {
           return true;
        }
    }
    public function login($data)
    {
        $query=$this->conn->query($data);
        if ($query->num_rows==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    public function insert($data)
    {
        $query=$this->conn->query($data);
        //$row=$query->num_rows;
        if ($query)
            return true;
        else
            return false;
    }
}
$object=new DataBase();
?>
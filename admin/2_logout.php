<?php 
session_start(); 
$_SESSION = array(); 
session_destroy(); 
header('location:2_login.php'); 

?>
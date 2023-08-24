<?php
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'chiangyum');
define('DB_PASSWORD', 'admin');
define('DB_NAME', 'chiangyum');
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
// 輸入中文也OK的編碼
mysqli_query($link, 'SET NAMES utf8');

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
// 改用全局變數儲存連接
$GLOBALS['link'] = $link;
?>
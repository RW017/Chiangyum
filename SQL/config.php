<?php
// 開始 session
//session_start();
if(!isset($_SESSION)) {
    // session has not started
    session_start();
}

$servername = "localhost";
$username = "chiangyum";
$password = "==Admin123==";
$dbname = "chiangyum";

// 建立連線
$conn = new mysqli($servername, $username, $password, $dbname);

// 檢測連線
if ($conn->connect_error) {
    die("連線失敗: " . $conn->connect_error);
}

// 輸入中文也 OK 的編碼
$conn->query("SET NAMES utf8");

// 改用全局變數儲存連接
$GLOBALS['conn'] = $conn;
?>

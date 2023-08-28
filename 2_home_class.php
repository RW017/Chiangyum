<?php
session_start();  //很重要，可以用的變數存在session裡
$username=$_SESSION["username"];
echo "<h1>教室你好 ".$username."</h1>";
echo "<a href='2_logout.php'>登出</a>";
    
?>
<?php
session_start();

if (isset($_POST["submit"]) && $_POST["submit"] == "登入") {
    
    $uname = $_POST["u_username"];
    $upassword = $_POST["u_password"];
    
    //$sql = "SELECT * FROM user WHERE user_account = '$u_username' AND user_password = '$u_password'";
    if ($uname == "" || $upassword == "") {
        echo "<script>alert('請輸入完整資料！'); history.go(-1);</script>";
    } else {
        // 數據庫參數
        $servername = "localhost";
        $username = "chiangyum";
        $password = "admin";
        $dbname = "chiangyum";
        // 建立連線
        $conn = new mysqli($servername, $username, $password, $dbname);
        // 檢測連線
        if ($conn->connect_error) {
            die("連線失敗: " . $conn->connect_error);
        }

        $sql = "SELECT * FROM user WHERE user_account = '$uname' AND user_password = '$upassword'";
        //執行SQL語句
        $result = $conn->query($sql);
        //統計執行結果影響的行數
        $num = $result->num_rows;

        //如果已經存在該使用者
        if ($num) {

            $row = mysqli_fetch_array($result);
            $sql = "SELECT user_name FROM user WHERE user_account = '$uname'";
            $result = $conn ->query($sql);
            $row = $result ->fetch_assoc();
            $user_name = $row["user_name"];
            $_SESSION['user_name'] = $user_name;
            $_SESSION["loggedin"]= true ;
           
                echo '<script>window.location.href="../shop/1_menber.php"</script>';
    
        } else {
            echo "<script>alert('資訊不正確！ $name $upassword ');history.go(-1);</script>";
        }
    }
}
else {
    echo "<script>alert('提交未成功！'); history.go(-1);</script>";
}
function function_alert($message) {
   echo "<script>alert('$message'); window.location.href='../shop/1_menber.php';</script>";
    return false;
}
?>

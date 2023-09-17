<html>

<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
</head>

<?php
// 啟用會話
session_start();

// When form is submitted
if (isset($_POST["submit"]) && $_POST["submit"] == "登入") {
    $name = $_POST["username"];
    $upassword = $_POST["password"];

    if ($name == "" || $upassword == "") {
        echo "<script>alert('請輸入完整資料！'); history.go(-1);</script>";
    } else {
        // 數據庫參數
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
        // 使用預備語句來防止SQL注入
        $sql = "SELECT employee_account, employee_password FROM employee WHERE employee_account = '$name' AND employee_password = '$upassword'";
        //執行SQL語句
        $result = $conn->query($sql);
        //統計執行結果影響的行數
        $num = $result->num_rows;

        //如果已經存在該使用者
        if ($num) {

            $row = mysqli_fetch_array($result);
            $sql = "SELECT employee_account, employee_rank FROM employee WHERE employee_account = '$name'";
            $result = $conn ->query($sql);
            $row = $result ->fetch_assoc();
            $_SESSION['employee_name'] = $name;
            $employee_rank = $row["employee_rank"];
            $_SESSION['employee_rank'] = $employee_rank;

           
                echo '<script>window.location.href="2_home.php"</script>';
    
        } else {
            echo "<script>alert('資訊不正確！ $name $upassword ');history.go(-1);</script>";
        }
    }
} else {
    echo "<script>alert('提交未成功！'); history.go(-1);</script>";
}
?>

</html>
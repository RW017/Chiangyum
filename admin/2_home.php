<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>管理者主頁</title>
    <link rel="stylesheet" href="./nav.css">
    <link rel="stylesheet" href="word.css">
    <style>
        /*主設定*/
        body {
            font-family: 'GenWanMin';
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            color: #4e4545;
        }

        p {
            font-weight: bold;
            color: #4e4545;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            text-align: center;
        }

        .options {
            margin-top: 20px;
        }

        .options a {
            margin-right: 20px;
        }
    </style>
</head>

<body>

    <?php
    session_start();
    if ($_SESSION["employee_name"]) {
    } else {
        echo "<script type='text/javascript'>alert('麻煩請登入後繼續');</script>";
        echo '<script >window.location.href="2_login.php"</script>';
    }
    $username = $_SESSION["employee_name"];  // 從 Session 中獲取使用者名稱
    $employee_rank = $_SESSION["employee_rank"];
    // 顯示問候和使用者名稱
    ?>

    <div class="nav">
        <input type="checkbox" id="nav-check">
        <div class="nav-header">
            <div class="nav-title">
                <?php
                echo "你好  " . $employee_rank . "" . $username . "";
                ?>
            </div>
        </div>
        <div class="nav-btn">
            <label for="nav-check">
                <span></span>
                <span></span>
                <span></span>
            </label>
        </div>

        <div class="nav-links">
            <a href="2_class.php" target="_blank">課程管理</a>
            <a href="2_product.php" target="_blank">產品管理</a>
            <a href="2_order.php" target="_blank">訂單管理</a>
            <a href="2_menber.php" target="_blank">會員管理</a>
            <a href="2_logout.php">登出</a>
        </div>

        <h1>待處裡訂單</h1>
        <?php
        //連線資料庫並讀取資料表
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
        //設定字符集,解決資料庫插入可能出現亂碼，設定編碼為GBK
        //構造sql查詢語句
        $sql =  "select * from order";
        //執行SQL語句
        $result = $conn->query($sql);

        echo '<table border="1" width="600" align="center">';
        echo '<tr bgcolor="#dddddd">';
        echo '<th>訂單編號</th><th>下單帳號</th><th>下單使用者</th><th>金額</th><th>下單日期</thth>備註</th>';
        echo '</tr>';
        while ($row = $result->fetch_assoc()) {
            if ($row["todo_fin_employee_id"]==null) {
            echo "<tr>";
            echo "<td>" . $row["todo_id"] . "</td><td>" . $row["todo_todo_type_id"] . "</td><td>" . $row["todo_memo"] . "</td><td>" . $row["todo_employee_id"] . "</td><td>" . $row["todo_date"] . "</td><td>" . $row["todo_deadline"] . "</td>";
            echo "</tr>";
            }
            
        }

        ?>
        <h1>待完成任務</h1>

        <?php
        $sql =  "select * from todo";
        //執行SQL語句
        $result = $conn->query($sql);

        echo '<table border="1" width="600" align="center">';
        echo '<tr bgcolor="#dddddd">';
        echo '<th>任務編號</th><th>任務類型</th><th>內容</th><th>負責人</th><th>建立日期</th><th>完成期限</th>';
        echo '</tr>';
        while ($row = $result->fetch_assoc()) {
            if ($row["todo_fin_employee_id"]==null) {
            echo "<tr>";
            echo "<td>" . $row["todo_id"] . "</td><td>" . $row["todo_todo_type_id"] . "</td><td>" . $row["todo_memo"] . "</td><td>" . $row["todo_employee_id"] . "</td><td>" . $row["todo_date"] . "</td><td>" . $row["todo_deadline"] . "</td>";
            echo "</tr>";
            }
            
        }

        ?>
        <button>新增任務</button>
    </div>
</body>

</html>
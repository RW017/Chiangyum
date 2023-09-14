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
        echo "你好  ". $employee_rank."".$username."";
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
</div>
</body>
</html>




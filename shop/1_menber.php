<!DOCTYPE html>
<html lang="zh-TW">
<?php
// Initialize the session
session_start();
include('..\SQL\config.php');  // 假设你的数据库连接代码保存在这个文件里
?>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>主頁面</title>
    <link rel="stylesheet" href="..\font\word.css">
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <style>
        /*主設定*/
        body {
            font-family: 'GenWanMin';
            margin: 25px;
            padding: 50px;
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

        /*排版*/
        .outer {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            max-width: 1000px;
            margin: 0 auto;
            box-sizing: border-box;
            align-items: center;
            justify-content: center;
        }

        .inner {
            border: 1px solid black;
            box-sizing: border-box;
            display: flex;
            justify-content: center;
            align-items: center;
            line-height: normal;
            width: calc(50% - 5px);
            /* 回復這一行，讓大螢幕上每行兩個 */
            flex-shrink: 0;
            flex-grow: 0;
            /* padding: 30px; */
        }

        @media (max-width: 1000px) {
            .inner {
                width: 100%;
            }
        }

        /*標題區域 */


        .title_area_left {
            padding: 20px;
            margin-right: 15px;
        }

        .title_area_right {
            margin-left: 15px;
        }

        .title_area_right img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            /* 這會使圖片保持其原始寬高比，多餘的部分會被裁剪 */
        }


        .title_area_left p:nth-child(1) {
            color: #4e4545;
            font-size: 42px;
        }

        .title_area_left p:nth-child(2) {
            color: #4e4545;
            font-size: 28px;
        }

        .title_area_left p {
            margin-top: 0;
            /* 清除上邊距 */
            margin-bottom: 5px;
            /* 這裡設定的是 5px，但你可以根據需要進行調整 */
        }

        .title_area_left p:last-child {
            margin-top: 5px;
            /* 這裡設定的是 5px，但你可以根據需要進行調整 */
        }

        /*內容區域 */
        .contect_area_left {
            margin-top: 0;
        }

        .contect_area_left p {
            font-size: 20px;
            font-weight: bold;
            color: #4e4545;
        }

        .contect_area_right {
            padding-top: 50px;
            margin-top: 0;
        }

        .contact_space {
            padding: 10px;
        }

        /*產品小框 */
        .product {
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
        }

        .product_num {
            flex: 1;
            padding: 10px;
            align-self: flex-start;
        }

        .product_info {
            flex: 8;
            padding: 10px;
            align-self: flex-start;
        }

        .product_lead {
            flex: 1;
            padding: 10px;
            align-self: flex-end;
        }

        /*延伸區域*/
        .tomore_area_left {
            padding: 50px;
        }

        .tomore_area_right {
            padding: 50px;
        }

        /*底部區域*/
    </style>
</head>

<body>

     <!-- 導覽列-->
  <div class="navbox">
    <div class="nav">
        <div class="containerr">
            <nav id="navigation">
            <a href="../shop/1_about_us.php" class="logo">蔣家小館</a>
                    <a aria-label="mobile menu" class="nav-toggle">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                    <ul class="menu-left">
                        <li><a href="../shop/1_class.php">查看課程</a></li>
                        <li> <a href="../shop/1_product.php">購買產品</a></li>
                        <li> <a href="../shop/1_other.php">好物推薦</a></li>
                        <li> <a href="../shop/1_menber.php">會員專區</a></li>

                        <?php if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) : ?>
                            <!-- 只有在用户登录时才显示购物车图标 -->
                            <li><a href="1_cart.html">
                            <img src="../material/icon/shopping-cart.png" alt="Shopping Cart" style="width: 15px; height: auto;">
                                </a></li>
                        <?php else : ?>
                            <li><a href="1_cart.php">登入</a></li>
                        <?php endif; ?>
                    </ul>
            </nav>
        </div>
    </div>
</div>
</div>
    <!-- 內容 -->
    <!-- 內容 -->
    <div class="outer">
        <!-- 標題 -->
        <?php if (!isset($_SESSION["loggedin"])) : ?>
            <div class="unknow ">
                <p>會員專區</p>
                <form method="post" action="1_sigin.php">
                    帳號：<input type="text" name="u_username"><br /><br />
                    密碼：<input type="password" name="u_password"><br><br>
                    <input type="submit" value="登入" name="submit"><br><br>
                </form>
            </div>
        <?php endif; ?>

        <?php if (isset($_SESSION["loggedin"])) : ?>
            <div class="know  ">
                <p>MEOW</p>
                <form method="post" action="1_logout.php">
                    <input type="submit" value="登出" name="logout">
                </form>
            </div>
        <?php endif; ?>
    </div>
    <!-- 水平向當月課程 -->

    <!-- 合作教室列表 -->

    <!-- 底部 -->
    <footer class="footer_container">
        <h2>蔣家小館</h2>
        <div class="footer_class">
            <div class="footer_content">
                <h5>TEL：0932149239</h5>
                <h5>908屏東縣長治鄉長生街231巷16號</h5>
                <h5>食品業者登錄字號:T-200151309-00000-7</h5>
                <h5>本產品已投保富邦產品責任險</h5>
            </div>
            <div class="footer_content">
                <h5>課程</h5>
                <a href="#" class="footer_href">實體課程</a>
                <a href="#" class="footer_href">線上課程</a>
                <a href="#" class="footer_href">蔣氏食譜</a>
            </div>
            <div class="footer_content">
                <h5>產品</h5>
                <a href="#" class="footer_href">蔣氏自製</a>
                <a href="#" class="footer_href">私房好物</a>
                <a href="#" class="footer_href">其他推薦</a>
            </div>
        </div>
        <h5 class="copyright">Copyright © 2023 RW017.</h5>

    </footer>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <script src="./navbar.js"></script>
    <link rel="stylesheet" href="navbar.js">
</body>

</html>
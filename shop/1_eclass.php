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
            /* border: 1px solid black; */
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            max-width: 1000px;
            margin: 0 auto;
            box-sizing: border-box;
        }

        .inner {
            /* border: 1px solid black; */
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

        /*產品排版 */
        .product_outer {
            /*  border: 1px solid black; */
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            max-width: 1000px;
            margin: 0 auto;
            box-sizing: border-box;
            justify-content: center;
        }

        .product_inner {
            /* border: 1px solid black; */
            box-sizing: border-box;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            line-height: normal;
            padding: 15px;
            aspect-ratio: 1/1;
            /* 這會使高度與寬度相等，形成正方形 */
            flex-basis: calc(20% - 5px);
            /* 一排五個 */
        }

        .product_inner img {
            max-width: 100%;
            max-height: 100%;
            object-fit: cover;
            /* 使圖片覆蓋整個區域，可能會裁切 */
        }

        @media (max-width: 1200px) {
            .product_inner {
                flex-basis: calc(25% - 5px);
                /* 一排四個 */
            }
        }

        @media (max-width: 1000px) {
            .product_inner {
                flex-basis: calc(33.3333% - 5px);
                /* 一排三個 */
            }
        }

        @media (max-width: 768px) {
            .product_inner {
                flex-basis: calc(50% - 5px);
                /* 一排兩個 */
            }
        }

        /* 新增目錄（sidebar） */
        .sidebar {
            margin-top: 50px;
            margin-bottom: 50px;
            background: #A2B2A63D;
            border: 1px  #A2B2A63D;
            padding:25px;
            box-sizing: border-box;
            text-align: center;
            /* 讓內容置中 */
        }

        .main_contect {
            /*border: 1px solid black;*/
            
            display: flex;
            justify-content: space-between;
            /*或者用其他的排列方式，根據你的需求*/
            width: 100%;
        }

        /* 隱藏目錄 */
        #sectionList.collapsed {
            display: none;
        }

        /* 將列表項目水平排列 */
        #sectionList {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            /* 將列表項目置中 */
            flex-wrap: wrap;
        }

        /* 當寬度小於或等於500px時，一排顯示兩個 */
        @media (max-width: 500px) {
            #sectionList li {
                width: calc(100% / 2);
            }
        }

        /* 調整列表項目的文字屬性 */
        #sectionList li a {
            color: #4e4545;
            font-size: 15px;
            font-weight: bold;
            /* 設置文字顏色 */
            text-decoration: none;
            /* 取消底線 */
            padding: 20px;
            /* 添加內間距以分隔文字 */
            display: inline-block;
            /* 將a元素設為inline-block以支援間距 */
        }

        /* 當滑鼠懸停在列表項目上時 */
        #sectionList li a:hover {
            text-decoration: underline;
            /* 添加底線 */
        }

        /* 移除按鈕的外框和背景色 */
        #toggleButton {
            border: none;
            background: none;
            padding: 0;
            margin: 0;
            cursor: pointer;
        }

        /* 當寬度小於或等於350px時，一排只顯示一個 */
        @media (max-width: 350px) {
            #sectionList li {
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
            </div>
        </div>
    </div>
    </div>
    <!-- 內容 -->
    <div class="outer">
        <!-- 標題 -->
        <div class="inner ">
            <div class="title_area_left">
                <p>購買產品</p>
                <p>-讓蔣家來為生活忙碌的你把關</p>
            </div>
        </div>
        <!-- 標題圖片 -->
        <div class="inner">
            <div class="title_area_right">
                <img src="material/product/product_main.jpg" alt="product">
            </div>
        </div>
    </div>
    <!-- 水平向分類 -->
    <div class="outer">
        <div class="main_content">
            <div class="sidebar">
                <h3>分類</h3>
                <ul id="sectionList" class="collapsed">
                    <li><a href="#section1">蔣家自製</a></li>
                    <li><a href="#section2">進貨</a></li>
                    <li><a href="#section3">調理包</a></li>
                    <!-- ... -->
                </ul>
                <button id="toggleButton">
                    <img id="toggleImage" src="more.png" alt="摺疊/展開" />
                </button>
            </div>

            <div class="product_outer">
                <?php
                // 使用全局变量中的数据库连接
                if (isset($GLOBALS['link'])) {
                    $link = $GLOBALS['link'];

                    $sql = "SELECT product_id, product_name, product_img, product_info, product_price FROM product";
                    $result = mysqli_query($link, $sql);

                    if (mysqli_num_rows($result) > 0) {
                        // 输出每行数据
                        while ($row = mysqli_fetch_assoc($result)) {
                            echo '<div class="product_inner">';
                            echo '<img src="' . $row["product_img"] . '" alt="product" width="280" height="280">';
                            echo '<h3>' . $row["product_name"] . '</h3>';
                            echo '<h5>' . $row["product_info"] . '</h5>';
                            echo '<p>$ ' . $row["product_price"] . '</p>';
                            echo '</div>';
                        }
                    } else {
                        echo "0 结果";
                    }
                } else {
                    echo "Database connection not established.";
                }
                ?>
            </div>
        </div>
    </div>
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
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const toggleButton = document.getElementById("toggleButton");
            const sectionList = document.getElementById("sectionList");
            const toggleImage = document.getElementById("toggleImage");

            toggleButton.addEventListener("click", function() {
                if (sectionList.classList.contains("collapsed")) {
                    sectionList.classList.remove("collapsed");
                    toggleImage.src = "back.png"; // 改變圖片為 back.png
                } else {
                    sectionList.classList.add("collapsed");
                    toggleImage.src = "more.png"; // 改變圖片為 more.png
                }
            });
        });
    </script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
    <script src="./navbar.js"></script>
    <link rel="stylesheet" href="navbar.js">
</body>

</html>
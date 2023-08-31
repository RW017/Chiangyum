<!DOCTYPE html>
<html lang="zh-TW">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>主頁面</title>
    <link rel="stylesheet" href="word.css">
    <link rel="stylesheet" href="navbar.css">
    <link rel="stylesheet" href="footer.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

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
    object-fit: cover; /* 這會使圖片保持其原始寬高比，多餘的部分會被裁剪 */
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
            padding-top: 50px ;
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
        .tomore_area_left{
            padding: 50px ;
        }
        .tomore_area_right{
            padding: 50px ;
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
                    <a href="0_main.html" class="logo">蔣家小館</a>
                    <a aria-label="mobile menu" class="nav-toggle">
                        <span></span>
                        <span></span>
                        <span></span>
                    </a>
                    <ul class="menu-left">
                        <li><a href="1_about_us.php">關於我們</a></li>
                        <li><a href="1_class.php">查看課程</a></li>
                        <li> <a href="1_eclass.php">線上課程</a></li>
                        <li> <a href="1_product.php">購買產品</a></li>
                        <li> <a href="1_other.php">好物推薦</a></li>
                        <li> <a href="1_menber.php">會員專區</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
    </div>
    <!-- 內容 -->
    <div class="outer">
        <!-- 標題 -->
        <div class="inner ">
            <div class="title_area_left">
                <p>關於我們</p>
                <p>-蔣家小館</p>
            </div>
        </div>
        <!-- 標題圖片 -->  
               
        <div class="inner">
            <div class="title_area_right">
                <!-- 注意這裡移除了 inline 的 style -->
                <img src="material/about_us.jpg" alt="about_us">
            </div>
        </div>
        <!-- 官方介紹 -->
        <div class="inner ">
            <div class="contect_area_left">
                <p>我們相信最真實的好處來自互利，
                    <br><br>
                    彼此感恩互助可以成就長遠的美好關係。
                    <br><br><br>
                    里仁以通路角色出發，
                    <br><br>
                    想要實現的卻是一個人與人、土地與土地，
                    <br><br>
                    所有事物之間都健康和樂的社會理想。
                    <br><br><br>
                    因此，我們拉著所有人的手一起前行，
                    <br><br>
                    守護土地與健康的使命沒有終點。
                    <br><br><br>
                    一個人的力量有限。
                    <br><br>
                    但一群人的力量就可以翻轉世界。
                </p>
            </div>
        </div>
        <!-- 主推產品 -->
        <div class="inner ">
            <div class="contect_area">
                <div class="contect_area_right">
                    <h1>主推產品</h1>
                    <hr>
                    <!-- 商品一 -->
                    <div class="product">
                        <div class="product_num">
                            <h2>01</h2>
                        </div>
                        <div class="product_info">
                            <h3>米麴</h3>
                            <h4>選用無農藥&檢驗合格米（保留外膜）+ 日本國菌
                            </h4>
                            <h5>將米麴外層有長菌絲的部份（佔約7成）磨成粉，
                                菌絲含各種酵素與營養質。
                                優質米麴能製作出更美味與更營養的發酵好物</h5>
                        </div>
                        <div class="product_lead">
                            <img src="material/link.png" alt="link" style="width: 30px; height: auto;">
                        </div>
                    </div>
                    <hr>
                </div>
                <!-- 商品二 -->
                <div class="product">
                    <div class="product_num">
                        <h2>02</h2>
                    </div>
                    <div class="product_info">
                        <h3>米麴（粒狀）</h3>
                        <h4>選用無農藥&檢驗合格米 + 日本國菌</h4>
                        <h5>米麴是使用磨得沒有很精白的無農藥白米
                            (有多些膳食纖維&營養質)
                            米麴是製作甘糀、鹽麴、纖穀釀 、味噌、醬油、
                            醬油麴、豆腐乳...等，最重要的元素。</h5>
                    </div>
                    <div class="product_lead">
                        <img src="material/link.png" alt="link" style="width: 30px; height: auto;">
                    </div>
                </div>
                <hr>
                <!-- 商品三 -->
                <div class="product">
                    <div class="product_num">
                        <h2>03</h2>
                    </div>
                    <div class="product_info">
                        <h3>紅麴粉</h3>
                        <h4>白天吃白米麴粉，晚上吃紅麴粉</h4>
                        <h5>選用無農藥&檢驗合格米（保留外膜）+ 日本國菌
                            紅麴粉是台灣製造、檢驗合格無橘黴素。</h5>
                    </div>
                    <div class="product_lead">
                        <img src="material/link.png" alt="link" style="width: 30px; height: auto;">
                    </div>
                </div>
            </div>
        </div>
        <!-- 報名課程 -->
        <div class="inner ">
            <div class="tomore_area_left">
                <h2>報名課程</h2>
                <h5>查看蔣夫人的全台巡迴課程，選擇自己所喜歡的課程報名，把健康生活帶回家。</h5>
                <img src="material/link.png" alt="link" style="width: 30px; height: auto;">
            </div>
        </div>
        <!-- 逛逛商品 -->
        <div class="inner ">
            <div class="tomore_area_right">
                <h2>逛逛商品</h2>
                <h5>沒有時間?場地不方便?那來逛逛我們的商場吧，我們提供直接宅配到家，或是店到店的商品寄送服務，更有線上課程提供忙碌的你選擇。</h5>
                <img src="material/link.png" alt="link" style="width: 30px; height: auto;">
            </div>
        </div>
    </div>
    <hr>
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
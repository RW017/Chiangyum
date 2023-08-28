<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>蔣家小館員工系統登入介面</title>
    <link rel="stylesheet" href="word.css">
    <style>
        /* 主設定 */
        body {
            font-family: 'GenWanMin';
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        /* 內容設定 */
        .container {
            text-align: center;
        }
        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            color: #4e4545;
        }
        /*link*/
        .register {
  padding: 0px;
  margin: 0px;
  text-decoration: none; /* 移除底線 */
  color: #4e4545; /* 設定文字顏色 */
}
.register:hover {
  text-decoration: underline; /* 滑鼠懸停時加上底線 */
}
    </style>
</head>
<body>
    <div class="container">
        <h1>蔣家小館</h1>
        <h2>系統登入介面</h2>
        <form method="post" action="2_sigin.php">
            帳號：<input type="text" name="username"><br/><br/>
            密碼：<input type="password" name="password"><br><br>
            <input type="submit" value="登入" name="submit"><br><br>

            <a href="2_register.html"class="register">加入蔣家小館</a>

        </form>
    </div>
</body>
</html>

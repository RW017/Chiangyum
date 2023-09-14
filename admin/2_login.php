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

        h4 {
            margin: 0px;
        }

        input[type="text"],
        input[type="password"] {
            margin-top: 5px;
            margin-bottom: 5px;

        }

        /*link*/
        .register {
            padding: 0px;
            margin: 0px;
            text-decoration: none;
            /* 移除底線 */
            color: #4e4545;
            /* 設定文字顏色 */
        }

        .register:hover {
            text-decoration: underline;
            /* 滑鼠懸停時加上底線 */
        }


        /* CSS */
        .button-54 {
            font-family: 'GenWanMin';
            font-size: 16px;
            letter-spacing: 2px;
            text-decoration: none;
            text-transform: uppercase;
            color: #4e4545;
            cursor: pointer;
            border: 2px solid;
            padding: 0.5em 0.5em;
            box-shadow: 1px 1px 0px 0px, 1px 1px 0px 0px, 3px 3px 0px 0px, 4px 4px 0px 0px, 5px 5px 0px 0px;
            position: relative;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
        }

        .button-54:active {
            box-shadow: 0px 0px 0px 0px;
            top: 5px;
            left: 5px;
        }

        @media (min-width: 768px) {
            .button-54 {
                padding: 0.25em 0.75em;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>蔣家小館</h1>
        <h2>系統登入介面</h2>
        <form method="post" action="2_sigin.php">
            <h4>帳號</h4>
            <input type="text" name="username"><br /><br />
            <h4>密碼</h4>
            <input type="password" name="password"><br><br>
            <input type="submit" value="登入" name="submit" class="button-54">

        </form>
    </div>
</body>

</html>


<!-- HTML !-->
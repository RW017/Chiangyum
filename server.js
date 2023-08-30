const express = require('express');
const multer = require('multer');
const path = require('path');

// 設定存儲引擎
const storage = multer.diskStorage({
  destination: 'uploads/',
  filename: function (req, file, cb) {
    cb(null, Date.now() + path.extname(file.originalname));
  }
});

// 初始化 Multer
const upload = multer({ storage: storage });

// 初始化 Express
const app = express();

// 設定上傳路由
app.post('/upload', upload.single('image'), (req, res) => {
  const filePath = path.join('uploads', req.file.filename);
  res.json({ filePath: filePath });
});

// 啟動服務器
app.listen(3000, () => {
  console.log('Server running on http://localhost:3000');
});

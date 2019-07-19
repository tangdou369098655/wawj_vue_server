const express=require('express');
const bodyParser=require('body-parser');

//引入路由模块
const cors=require('cors');
const product=require('./routers/product');
const pics=require('./routers/pics');
const index=require('./routers/index');

//创建web服务器
var server=express();
server.listen(3000);
//跨域请求cors
server.use(cors({
  origin:"http://localhost:8080" ,
  // origin:"*" ,
  // origin:"http://127.0.0.1:5501" ,
  credentials: true
}));
// server.writeHead(200,{"Access-Control-Allow-Credentials":true});
server.use(bodyParser.urlencoded({
  extended:false
}));





//托管静态资源到public下；
server.use(express.static('public'));


server.use('/product',product);
server.use('/pics',pics); 
server.use('/index',index);

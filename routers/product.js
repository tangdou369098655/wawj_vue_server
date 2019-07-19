const express = require("express");
const router = express.Router();
const pool = require("../pool");

//需要查询多个数据表格
router.get("/", (req, res) => {
  var pid = req.query.pid;
  var output = {
    product: {}
  }
  if (pid !== undefined) {
    var sql1 = `select * from index_product where pid=?`;
    pool.query(sql1, [pid], (err, result) => {
      if (err) console.log(err);
      output.product = result;
      console.log(output);
      console.log("haha1");
          res.send(output);
      })
    
  }else{
    res.send(output);
    console.log(444)
  }
})

module.exports = router;

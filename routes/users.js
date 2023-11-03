var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get("/", (request, response) => {
  response.send("uno, dos, tres..");
});

module.exports = router;

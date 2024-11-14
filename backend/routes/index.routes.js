const express = require("express");
const router = express.Router();

var path = require("path");

router.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "../public/index.html"));
});

router.get("/datatable", (req, res) => {
  res.sendFile(path.join(__dirname, "../public/datatable.html"));
});

module.exports = router;

const express = require("express");
const router = express.Router();

var path = require("path");

const { Pool } = require("pg");
const fs = require("fs").promises;

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "ORv1",
  password: "123",
  port: 5432,
});

router.get("/Geoportal_vatrogasci.csv", async (req, res) => {
  const filePath = path.join(__dirname, "../data/Geoportal_vatrogasci.csv");
  res.download(filePath);
});

router.get("/Geoportal_vatrogasci.json", async (req, res) => {
  const filePath = path.join(__dirname, "../data/Geoportal_vatrogasci.json");
  res.download(filePath);
});

router.get("/schema.json", async (req, res) => {
  const filePath = path.join(__dirname, "../data/schema.json");
  res.download(filePath);
});

router.get("/getdatatable", async (req, res) => {
  try {
    const query = await getQueryFromFile("./data/query.txt");
    const result = await pool.query(query);
    res.json(result.rows);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Failed to retrieve data" });
  }
});

async function getQueryFromFile(filePath) {
  try {
    const query = await fs.readFile(filePath, "utf-8");
    return query;
  } catch (error) {
    console.error(`Error reading query from file: ${error}`);
    throw error;
  }
}

module.exports = router;

const express = require("express");
const jwt = require("jsonwebtoken");
const router = express.Router();
const knexConfig = require("../knexfile");
const knex = require("knex")(knexConfig.development);

// Register/Signup
// POST method
router.post("/register", async (req, res) => {
  try {
    const { username, email, phone, password } = req.body;
    const [id] = await knex("users").insert({
      username,
      email,
      phone,
      password,
    });
    res.status(201).json({ id, username, email });
  } catch (error) {
    console.log(error);
    if (error.code === "ER_DUP_ENTRY") {
      res.status(400).json({ error: "Email or Phone already exists!" });
    }
    res.status(500).json({ error: "Error creating user" });
  }
});

// Login/Signin
// POST method
router.post("/login", async (req, res, next) => {
  try {
    const { email, password } = req.body;
    const user = await knex("users").first("*").where({ email: email });
    console.log(user);
    if (!user) {
      return res.status(404).json({ message: "User not found!" });
    }
    if (password !== user.password) {
      return res.status(401).json({ message: "Invalid password!" });
    }

    const token = jwt.sign({ user_id: user.user_id }, "jwtSecret", {
      expiresIn: "1200s",
    });

    res.status(200).json({ message: "User Login Successful", token: token });
  } catch (err) {
    res.status(500).json({ message: err.message });
    next();
  }
});

// Get All Users in the database
// GET method
router.get("/getAllUsers", async (req, res) => {
  try {
    const items = await knex.select().table("users");
    res.json(items);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error fetching records" });
  }
});

// Get User By Id
// GET method
router.get("/:id", async (req, res) => {
  try {
    const id = req.params.id;
    const user = await knex.select().where({ id }).table("users");
    if (user.length === 0) {
      return res.status(404).json({ error: "User not found" });
    }
    res.json(user);
  } catch (error) {
    console.log(error);
    res.status(500).json({ error: "Error fetching records" });
  }
});

module.exports = router;

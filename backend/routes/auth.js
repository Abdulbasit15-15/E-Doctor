const express = require('express');
const router = express.Router();
const { db } = require('../index');

router.post('/signup',async (req,res) => {
    try {
      const { name, email, password, phone } = req.body;
  
      const user = await db('users').insert({
        username: name,
        email: email,
        password: password,
        phone: phone
      });
      if (user) {
        res.status(200).json({ message: 'Signup Successful' });
      }
      // For duplicate entry
    } catch {
      res.status(400).json({ message: 'User already registered' });
    }
  });

module.exports = { router }
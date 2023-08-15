const express = require("express");
const app = express();
const PORT = 3000;
const auth = require("./routes/auth");

app.use(express.json());

app.use("/users", auth);

app.use((req, res) => {
  const error = new Error("Sorry, not found!");
  console.log(error);
  res.status(500).json({message: error.message})
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

const express = require('express');
const app = new express()
const knex = require('knex');
const {router} = require('./routes/auth'); // Update the path as needed

app.use(express.json()); // Add this middleware to parse JSON requests

const database = {
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'e-doctor',
};

const db = knex({
    client: 'mysql', // Adjust this based on your database
    connection: {
        host: database.host,
        user: database.user,
        password: database.password,
        database: database.database,
    },
});

module.exports = {
    db, 
    database, 
};

// Use the signupRoute for the '/signup' endpoint
app.use(router);


app.listen(3000, ()=>{
    console.log("server started now");
})

/** await queryRunner.query(`CREATE TABLE \`user\` (\`id\` int NOT NULL AUTO_INCREMENT, \`firstName\` varchar(255) NOT NULL, \`lastName\` varchar(255) NOT NULL, \`email\` varchar(255) NOT NULL, \`password\` varchar(255) NOT NULL, UNIQUE
 *  INDEX \`IDX_e12875dfb3b1d92d7d7c5377e2\` (\`email\`), PRIMARY KEY (\`id\`)) ENGINE=InnoDB`); */
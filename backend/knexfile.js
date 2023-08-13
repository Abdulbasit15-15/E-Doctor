// knexfile.js

const { database } = require('./index'); // Import the database configuration from index.js

module.exports = {
    development: {
        client: 'mysql', // Adjust this based on your database
        connection: {
            host: database.host,
            user: database.user,
            password: database.password,
            database: database.database,
        },
        // Other configuration options for development...
        migrations: {
            directory: './db/migrations', // Path to your migrations directory
        },
    },
    // Other environments...
};

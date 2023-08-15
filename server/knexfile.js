module.exports = {
    development: {
      client: "mysql",
      connection: {
        host: "localhost",
        user: "root",
        password: "",
        database: "e-doctor",
      },
      migrations: {
        directory: "./db/migrations",
      },
      pool: {
        min: 2,
        max: 10,
      },
    },
  };
  

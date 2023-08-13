// migrations/20230713123456_create_users_table.js (example timestamp format)

exports.up = function(knex) {
    return knex.schema.createTable('users', function(table) {
      table.increments('id').primary();
      table.string('username').notNullable();
      table.string('email').unique().notNullable();
      table.string('phone').unique().notNullable();
      table.string('password').notNullable();
      table.timestamps(true, true);
    })
    .createTable('doctors', function(table) {
      table.increments('id').primary();
      table.string('name').notNullable();
      table.string('specialty').notNullable();
      table.timestamps(true, true);
    })
    .createTable('symptoms', function(table) {
        table.increments('id').primary();
        table.string('name').notNullable();
        table.string('specialty').notNullable();
        table.timestamps(true, true);
      });
  };
  
  
  exports.down = function(knex) {
    return knex.schema.dropTable('doctors')
      .dropTable('users').dropTable('symptoms');
  };
  
  
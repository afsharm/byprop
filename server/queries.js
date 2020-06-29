import Pool from 'pg';

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'postgres',
  password: '123',
  port: 5432,
})


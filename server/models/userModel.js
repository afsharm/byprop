import Pool from 'pg';

export default {
  getAll: async () => { 
      console.log('before pool');

      const config = {
        user: 'postgres',
        host: 'localhost',
        database: 'postgres',
        password: '123',
        port: 5432,
      };

      const pool = new Pool.Pool(config);
   
      const results = await pool.query('SELECT * FROM apar ORDER BY id ASC');
        console.log('inside ' + results.rows.length);
        return results.rows;
      
    },
  }

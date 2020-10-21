import Pool from 'pg';
import config from '../queries.js';

export default {
  getAll: async () => {
    console.log('before pool');

    const pool = new Pool.Pool(config.db);

    const results = await pool.query('SELECT * FROM load ORDER BY inserted_at DESC');
    console.log('inside ' + results.rows.length);
    return results.rows;

  },

  createItem: async (source, dest) => {
    console.log('createItem');

    const pool = new Pool.Pool(config.db);

    var result = await pool.query(
      'INSERT into load (source, dest) VALUES($1, $2) RETURNING id',
      [source, dest]);

    return result;
  }
}

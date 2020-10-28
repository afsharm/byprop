import Pool from 'pg';
import config from '../queries.js';

export default {
  getProvince: async () => {
    console.log('before pool');

    const pool = new Pool.Pool(config.db);

    const results = await pool.query('SELECT id, name FROM province ORDER BY name');
    console.log('inside ' + results.rows.length);
    return results.rows;

  }
}

import Pool from 'pg';
import config from '../queries.js';

export default {
  getProvince: async () => {
    console.log('before pool');

    const pool = new Pool.Pool(config.db);

    const results = await pool.query('SELECT id, name FROM province ORDER BY name');
    console.log('inside ' + results.rows.length);

    return results.rows;
  },

  getCounty: async (provinceId) => {
    console.log('before pool');

    const pool = new Pool.Pool(config.db);

    const results = await pool.query('SELECT id, name FROM county where province = $1 ORDER BY name', [provinceId]);
    console.log('inside ' + results.rows.length);

    return results.rows;
  },

  getAllCounty: async () => {
    const pool = new Pool.Pool(config.db);
    const results = await pool.query('SELECT id, name, province FROM county ORDER BY name');
    return results.rows;
  }  
}

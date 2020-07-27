import Pool from 'pg';
import config from '../queries.js';

export default {
  getAll: async () => {
    console.log('before pool');

    const pool = new Pool.Pool(config.db);

    const results = await pool.query('SELECT * FROM apar ORDER BY id ASC');
    console.log('inside ' + results.rows.length);
    return results.rows;

  },

  createItem: async (firstName, lastName) => {
    console.log('createItem');

    const pool = new Pool.Pool(config.db);

    var result = await pool.query(
      'INSERT into apar (id, firstname, lastname) VALUES($1, $2, $3) RETURNING id',
      [5, firstName, lastName]);

    return result;
  }
}

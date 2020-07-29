import Pool from 'pg';
import config from '../queries.js';
import { v4 as uuidv4 } from 'uuid';

export default {
  getAll: async () => {
    const pool = new Pool.Pool(config.db);
    const results = await pool.query('SELECT * FROM drafts');

    return results.rows;
  },

  createItem: async (code, document_number, status) => {
    console.log('createItem');

    const pool = new Pool.Pool(config.db);
    var new_uuid = uuidv4();
    console.log('uuid: ' + new_uuid);
    var result = await pool.query(
      'INSERT into drafts (id, code, document_number, status) VALUES($1, $2, $3, $4) RETURNING id',
      [new_uuid, code, document_number, status]);

    return result;
  },

  countAgentMainDrafts: async(agentMainId, agencyId, status, date) => {
    const pool = new Pool.Pool(config.db);
    console.log('start');
    var result = await pool.query(
      'select count(*) from drafts'
      //,[agentMainId, agencyId, status, date]
    );
    
    console.log('returned from db');
    return result.rows[0].count;
  }
}

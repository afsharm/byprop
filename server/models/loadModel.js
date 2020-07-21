import Pool from 'pg';
import config from '../queries.js';

export default {
    addLoad: async (code, dicument_number, status) => {
      console.log('createItem');

      const pool = new Pool.Pool(config.db);
   
      var result = await pool.query(
        'INSERT into drafts (id, code, document_number, status) VALUES($1, $2, $3, $4) RETURNING id', 
        [new_uuid, code, dicument_number, status]);

        return result;
    }
  }

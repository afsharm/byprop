// utils
import makeValidation from '@withvoid/make-validation';
// models
//import { USER_TYPES } from '../models/User.js';

import Pool from 'pg';

// const pool = new Pool({
//   user: 'postgres',
//   host: 'localhost',
//   database: 'postgres',
//   password: 'password',
//   port: 5432,
// })


export default {

  onGetAllUsers: async (req, res) => { 
      console.log('before pool');

      const config = {
        user: 'postgres',
        host: 'localhost',
        database: 'postgres',
        password: '123',
        port: 5432,
      };

      const pool = new Pool.Pool(config);
      // const pool = new Pool({
      //   user: 'postgres',
      //   host: 'localhost',
      //   database: 'postgres',
      //   password: '123',
      //   port: 5432,
      // });

      // pool.user =  'postgres';
      // pool.host= 'localhost';
      // pool.database= 'postgres';
      // pool.password= '123';
      // pool.port= 5432;


      pool.query('SELECT * FROM apar ORDER BY id ASC', (error, results) => {
        if (error) {
          throw error
        }
        console.log('inside');
        //response.status(200).json(results.rows)
        return res.status(200).json(results.rows)
      })
    
      //return res.status(200).json({success: true, items: [{name: "jack"},{name: "jane"}]});
    },

    onGetUserById: async (req, res) => { },

    onCreateUser: async (req, res) => { 
        try {
          console.log('onCreateUser');
            const validation = makeValidation(types => ({
              payload: req.body,
              checks: {
                firstName: { type: types.string },
                lastName: { type: types.string },
                //type: { type: types.enum, options: { enum: USER_TYPES } },
              }
            }));
            console.log('validation1');
            if (!validation.success) return res.status(400).json(validation);
            console.log('validation2');
      
            const { firstName, lastName, type } = req.body;
            //const user = await UserModel.createUser(firstName, lastName, type);
            return res.status(200).json({ success: true, user });
          } catch (error) {
            return res.status(500).json({ success: false, error: error })
          }
    },

    onDeleteUserById: async (req, res) => { },
  }
import makeValidation from '@withvoid/make-validation';
import userModel from '../models/userModel.js';

export default {
  onGetAllUsers: async (req, res) => {
    userModel.getAll().then(results => {
      console.log('results ' + results.length);
      return res.status(200).json(results)
    });
  },

  onGetUserById: async (req, res) => { },

  onCreateUser: async (req, res) => {
    try {
      console.log('onCreateUser');
      console.log(req.headers);
      console.log(req.body);
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
      console.log(req.body);
      const { firstName, lastName } = req.body;

      userModel.createItem(firstName, lastName);
      console.log('user');
      var final = res.status(200).json({ success: true, firstName });
      console.log('sttus');
      return final;
    } catch (error) {
      return res.status(500).json({ success: false, error: error })
    }
  },

  onDeleteUserById: async (req, res) => { },
}
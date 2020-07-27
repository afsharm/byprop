import makeValidation from '@withvoid/make-validation';
import draftModel from '../models/draftModel.js';

export default {
  onGetAll: async (req, res) => { 
    draftModel.getAll().then(results => {
            console.log('results ' + results.length);
            return res.status(200).json(results)
        });
    },

    onCreate: async (req, res) => { 
        try {
          console.log('onCreate');
            const validation = makeValidation(types => ({
              payload: req.body,
              checks: {
                code: { type: types.string },
                document_number: { type: types.string },
                status: { type: types.string },
              }
            }));
            console.log('validation1');
            if (!validation.success) return res.status(400).json(validation);
            console.log('validation2');
            console.log(req.body);
            const { code, document_number, status } = req.body;

            await draftModel.createItem(code, document_number, status);
            console.log('item');
            var final = res.status(200).json({ success: true,  code });
            console.log('sttus');
            return final;
          } catch (error) {
            console.log(error);
            console.log(error.message);
            return res.status(500).json({ success: false, error: error.message })
          }
    },
  }
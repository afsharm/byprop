import draftModel from '../models/draftModel.js';
import loadModel from '../models/loadModel.js';

export default {
  onGetAll: async (req, res) => {
    loadModel.getAll().then(results => {
      console.log('results ' + results.length);
      return res.status(200).json(results)
    });
  },

  onCreate: async (req, res) => {
    try {
      console.log('onCreate');
      console.log(req.headers);
      console.log(req.body);
      const validation = makeValidation(types => ({
        payload: req.body,
        checks: {
          source: { type: types.string },
          dest: { type: types.string },
        }
      }));
      console.log('validation1');
      if (!validation.success) return res.status(400).json(validation);
      console.log('validation2');
      console.log(req.body);
      const { source, dest } = req.body;

      loadModel.createItem(source, dest);
      console.log('user');
      var final = res.status(200).json({ success: true, source });
      console.log('sttus');
      return final;
    } catch (error) {
      return res.status(500).json({ success: false, error: error })
    }
  }
}

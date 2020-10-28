import commonModel from '../models/commonModel.js';

export default {
  onProvince: async (req, res) => {
    commonModel.getProvince().then(results => {
      console.log('results ' + results.length);
      return res.status(200).json(results)
    });
  }
}

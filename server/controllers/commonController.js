import commonModel from '../models/commonModel.js';

export default {
  onProvince: async (req, res) => {
    commonModel.getProvince().then(results => {
      console.log('results ' + results.length);
      return res.status(200).json(results)
    });
  },

  onCounty: async (req, res) => {
    commonModel.getCounty(req.query.provinceId).then(results => {
      return res.status(200).json(results)
    })
  },

  onAllCounty: async (req, res) => {
    let counties = await commonModel.getAllCounty();
    let provinces = await commonModel.getProvince();
    let retval = { validity: 1440, provinces: provinces, counties: counties }

    return res.status(200).json(retval)
  }
}

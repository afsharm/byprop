import draftModel from '../models/draftModel.js';

export default {
  onGetAgentMainTodayStatistics: async (req, res) => {
    const { agentMainId, agencyId, status, date } = req.body;
    var result = await draftModel.countAgentMainDrafts(agentMainId, agencyId, status, date);
    return res.status(200).json(result);
  },
}
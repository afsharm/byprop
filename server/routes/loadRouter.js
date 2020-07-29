import express from 'express';
import load from '../controllers/loadController.js';

const router = express.Router();

router
  .get('/todayStat', load.onGetAgentMainTodayStatistics)

export default router;

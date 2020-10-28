import express from 'express';
import load from '../controllers/commonController.js';

const router = express.Router();

router
.get('/province', load.onProvince)

export default router;

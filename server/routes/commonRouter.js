import express from 'express';
import load from '../controllers/commonController.js';

const router = express.Router();

router
.get('/province', load.onProvince)
.get('/county', load.onCounty)
.get('/allcounty', load.onAllCounty)

export default router;

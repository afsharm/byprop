import express from 'express';
import load from '../controllers/loadController.js';

const router = express.Router();

router
.get('/', load.onGetAll)
.post('/', load.onCreate)

export default router;

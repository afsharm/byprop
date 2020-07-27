import express from 'express';
import draft from '../controllers/draftController.js';

const router = express.Router();

router
  .get('/', draft.onGetAll)
  .post('/', draft.onCreate)

export default router;

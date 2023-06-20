const express = require('express');
const controller = require('../controllers/user.controller');

const router = express.Router();
router.get(controller.user.test.ENDPOINT, controller.user.test);

module.exports = router;

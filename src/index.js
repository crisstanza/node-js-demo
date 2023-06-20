const express = require('express');
const routeUser = require('./routes/user.route');

const app = express();
app.use(routeUser);

app.listen(3000, () => {
  console.log('Server started!');
});

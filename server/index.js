import http from 'http';
import express from "express";
import logger from "morgan";
import indexRouter from "./routes/indexRouter.js";
import userRouter from "./routes/userRouter.js";
import draftRouter from "./routes/draftRouter.js";
import loadRouter from "./routes/loadRouter.js";
import config from './queries.js';

const app = express();

/** Get port from environment and store in Express. */
const port = process.env.PORT || config.port;
app.set("port", port);

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use("/", indexRouter);
app.use("/user", userRouter);
app.use("/draft", draftRouter);
app.use("/load", loadRouter)

/** catch 404 and forward to error handler */
app.use('*', (req, res) => {
  return res.status(404).json({
    success: false,
    message: 'API endpoint doesnt exist'
  })
});

/** Create HTTP server. */
const server = http.createServer(app);
/** Listen on provided port, on all network interfaces. */
server.listen(port);
/** Event listener for HTTP server "listening" event. */
server.on("listening", () => {
  console.log(`Listening on port:: http://localhost:${port}/`)
});

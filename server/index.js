import http from 'http';
import express from "express";
import logger from "morgan";
import indexRouter from "./routes/indexRouter.js";
import userRouter from "./routes/userRouter.js";
import draftRouter from "./routes/draftRouter.js";
import loadRouter from "./routes/loadRouter.js";
import config from './queries.js';
import commonRouter from "./routes/commonRouter.js";

const app = express();

/** Get port from environment and store in Express. */
const port = process.env.PORT || config.port;
app.set("port", port);

app.use(logger("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use("/v1/", indexRouter);
app.use("/v1/user", userRouter);
app.use("/v1/draft", draftRouter);
app.use("/v1/load", loadRouter);
app.use("/v1/common", commonRouter);

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

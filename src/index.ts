import * as express from "express";
import * as socketIO from "socket.io";
import * as http from "http";
import * as cors from "cors";

console.log("start!!!");
const app = express();
const server = http.createServer(app);
const io: socketIO.Server = socketIO(server);
app.use(cors());
app.get("/", (req: express.Request, res: express.Response) => {
    res.send("start");
});

io.origins("*:*");
io.on("connection", (socket: any) => {
    socket.on("playlist", (data: any) => {
        console.log(data);
        io.emit("playlist", JSON.stringify(data));
    });
    socket.on("remove", (data: any) => {
        console.log(data);
        io.emit("remove", JSON.stringify(data));
    });
});

server.listen(4000);

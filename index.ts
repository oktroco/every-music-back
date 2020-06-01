import * as express from "express";
import * as socketIO from "socket.io";
import * as http from "http";
import * as cors from "cors";
class App {
    public application: express.Application;
    constructor() {
        this.application = express();
    }
}
console.log("start!!!");
const app = new App().application;
const io: socketIO.Server = socketIO(http.createServer(app));
app.use(cors());
app.get("/", (req: express.Request, res: express.Response) => {
    res.send("start");
});
app.listen(4000, () => console.log("start"));
io.origins("*:*");
io.on("connection", (socket: any) => {
    socket.on("message", (data: any) => {
        console.log(data);
        io.emit("message", JSON.stringify(data));
    });
});

io.on("testmsg", function (data) {
    console.log(data);
});

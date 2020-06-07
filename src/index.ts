import express from "express";
import socketIO from "socket.io";
import http from "http";
import cors from "cors";
import { sequelize, port } from "./settings";
import { ContentInfo } from "./models/player.models";

console.log("start!!!");
const app = express();
const server = http.createServer(app);
const io: socketIO.Server = socketIO(server);
app.use(cors());
app.get("/", (req: express.Request, res: express.Response) => {
    res.send("start");
});

app.get("/playlist", async (req: express.Request, res: express.Response) => {
    const contents = await ContentInfo.findAll({ order: [["create_dt", "DESC"]] });
    console.log(contents);
    await res.send({ data: contents });
});

try {
    sequelize.authenticate();
    console.log("ok");
} catch (error) {
    console.log(error);
}

interface PlayList {
    yt_id: string;
    title: string;
}

interface Remove {
    type: string;
    content_id?: string;
}

io.origins("*:*");
io.on("connection", (socket: any) => {
    socket.on("playlist", async (data: PlayList) => {
        console.log(data);
        const count = await ContentInfo.count();
        console.log("count", count);
        const last_content = await ContentInfo.findOne({ order: [["content_id", "DESC"]] });
        const new_content = await ContentInfo.create({
            content_id: last_content ? last_content.content_id + 1 : 1,
            yt_id: data.yt_id,
            title: data.title,
        });

        console.log(new_content);

        const contents = await ContentInfo.findAll({ order: [["create_dt", "DESC"]] });
        console.log(contents);
        io.emit("playlist", JSON.stringify({ contents }));
    });
    socket.on("remove", (data: Remove) => {
        console.log(data);
        if (data.type === "playlist") ContentInfo.destroy({ where: {}, truncate: true });
        else if (data.type === "content") ContentInfo.destroy({ where: { content_id: data.content_id } });
        io.emit("remove", JSON.stringify(data));
    });
});

server.listen(port);

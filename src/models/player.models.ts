import { Model } from "sequelize";
import { sequelize } from "../settings";
import { CommonModel } from "./common.models";
import { DataTypes } from "sequelize";

export class ContentInfo extends CommonModel {
    public content_id: number;
    public member_id: number;
    public yt_id: string;
    public title: string;
}

ContentInfo.init(
    {
        content_id: {
            type: DataTypes.INTEGER,
            primaryKey: true,
        },
        yt_id: {
            type: DataTypes.STRING(255),
        },
        title: {
            type: DataTypes.STRING(255),
        },
    },
    {
        timestamps: false,
        sequelize: sequelize,
        tableName: "content_info",
    },
);

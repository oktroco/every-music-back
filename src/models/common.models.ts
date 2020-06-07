import { Sequelize, Model, DataTypes } from "sequelize";
import { sequelize } from "../settings";

export class CommonModel extends Model {
    public create_dt: Date;
    public update_dt: Date;
    public delete_dt: Date;
}

CommonModel.init(
    {
        create_dt: {
            type: DataTypes.DATE,
            allowNull: false,
        },
        update_dt: {
            type: DataTypes.DATE,
            allowNull: false,
        },
        delete_dt: {
            type: DataTypes.DATE,
            allowNull: true,
        },
    },
    {
        timestamps: false,
        sequelize: sequelize,
    },
);

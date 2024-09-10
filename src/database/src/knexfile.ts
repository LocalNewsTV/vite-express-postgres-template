import { Knex } from "knex";
import path from "path";

const config: { [key: string]: Knex.Config } = {
  development: {
    client: "pg",
    connection: {
      host: process.env.HOST ?? "localhost",
      port: process.env.PORT ? parseInt(process.env.PORT) : 5432,
      user: process.env.POSTGRES_USER ?? "admin",
      password: process.env.POSTGRES_PASSWORD ?? "admin",
      database: process.env.POSTGRES_DB ?? "app",
    },
    pool: {
      min: 2,
      max: 10,
    },
    migrations: {
      tableName: "migration",
      directory: path.resolve("./migrations"),
    },
    seeds: {
      directory: path.resolve("./seeds"),
    },
  },
};

module.exports = config;

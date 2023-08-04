// src/database.ts
import pgPromise from 'pg-promise';
const pgp = pgPromise();
const db = pgp({
  connectionString: 'postgres://app_admin:app_admin@localhost:5432/app_db',
});
export default db;

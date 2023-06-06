import mariadb from "mariadb";

const pool = mariadb.createPool({
  host: "localhost",
  user: "root",
  database: "apotek_aliya",
});

const conn = await pool.getConnection();
console.log("Basis data telah terhubung.");

export default conn;
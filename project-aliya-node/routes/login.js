import conn from "../db.js";
import jwt from "jsonwebtoken";

export  async function login (req, res) {
    const rows = await conn.query(
      `SELECT * FROM akun WHERE user = '${req.body.user}'&& password='${req.body.password}'`
    );
    if (rows.length > 0) {
      if (req.body.password === rows[0].password && req.body.user === rows[0].user) {
        const token = jwt.sign(rows[0], "rahasia");
        res.send("berhasil");
      } else {
        res.status(401).send("user atau Kata sandi salah.");
      }
    } else {
      res.status(401).send("Nama pengguna tidak ditemukan.");
    }
}
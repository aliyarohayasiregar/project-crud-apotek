import conn from "../db.js";
import jwt from "jsonwebtoken";

export  async function admin (req, res) {
    const rows = await conn.query(
      `SELECT * FROM admin WHERE user = '${req.body.user}'|| password='${req.body.password}'`
    );
    if (rows.length > 0) {
      if (req.body.password === rows[0].password && req.body.user === rows[0].user) {
        const token = jwt.sign(rows[0], "rahasia");
        res.send(token);
      } else {
        res.status(401).send("user atau Kata sandi salah.");
      }

    } else {
      res.status(401).send("admin tidak ada!!!");
    }

}
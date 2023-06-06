import conn from "../db.js";

export async function addUser(req, res) {
   const rows= await conn.query(
      `INSERT INTO akun VALUES (NULL,'${req.body.user}','${req.body.password}')`
    );
    res.send("pengguna telah ditambahkan.");
    if (rows.length > 0) {
      if (req.body.user === rows[0].user) {
        res.send("nama Pengguna sudah ada coba nama lain");
        }
      }
  
    }

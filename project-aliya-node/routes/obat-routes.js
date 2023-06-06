import conn from "../db.js";

export async function getAllobat(_req, res) {
    const rows = await conn.query("SELECT * FROM obat");
    res.send(rows);
  }
  
  export async function getObatbyid(req, res) {
    const rows = await conn.query(
      `SELECT * FROM obat WHERE id= '${req.params.id}'`
    );
    res.send(rows[0]);
  }
  
  export async function addObat(req, res) {
    await conn.query(
      `INSERT INTO obat VALUES (NULL, '${req.body.nama_obat}', '${req.body.harga_obat}','${req.body.kode_obat}','${req.body.stok_obat}','${req.file.filename}')`
    );
    res.send("obat telah ditambahkan.");
  }
  
  export async function editObatById(req, res) {
    console.log(req.params.id);
    await conn.query(
      `UPDATE obat SET nama_obat ='${req.body.nama_obat}', harga_obat = '${req.body.harga_obat}' ,stok_obat = '${req.body.stok_obat}',foto='${req.file.filename}' WHERE id = '${req.params.id}'`
    );
    res.send("obat telah diedit.");
  }
  
  export async function deleteObatById(req, res) {
    await conn.query(`DELETE FROM obat WHERE id = '${req.params.id}'`);
    res.send("Obat telah dihapus.");
  }
  
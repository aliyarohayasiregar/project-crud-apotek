import express from "express";
import jwt from "jsonwebtoken";

import {
  addObat,
  deleteObatById,
  editObatById,
  getAllobat,
  getObatbyid,

} from "./routes/obat-routes.js";


import multer from "multer";

import {addUser} from"./routes/daftar.js";
import {login} from"./routes/login.js";
import {admin} from"./routes/admin.js";
const app = express();
app.use(express.static("public"));
app.use(express.json());
// app.use(fileUpload());

const upload = multer({ dest: "public/photos" });

function auth(req, res, next) {
  if (req.headers.authorization) {
    const token = req.headers.authorization.split(" ")[1];
    jwt.verify(token, "rahasia", async (err, _decoded) => {
      if (!err) {
        next();
      } else {
        res.status(401).send("Token salah.");
      }
    });
  } else {
    res.status(401).send("Token belum ada.");
  }
}
app.post("/api/login",login);
app.post("/api/daftar",addUser);
app.post("/api/admin",admin);
app.get("/api/obat",getAllobat);

app.use(auth); 
app.get("/api/obat/:id", getObatbyid);
app.post("/api/obat", upload.single("foto"), addObat);
app.put("/api/obat/:id",upload.single("foto"), editObatById);
app.delete("/api/obat/:id", deleteObatById);




app.listen(3000, () => console.log("Server sedang berjalan."));

  
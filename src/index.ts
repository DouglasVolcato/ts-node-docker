import express from "express";
import ip from "ip"

const app = express();
const port = process.env.PORT || 5000

app.get("/", (req,res) => {
    res.send({Your_IP: ip.address()})
})

app.listen(port, () => console.log("http://localhost:" + port));

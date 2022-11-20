const express = require("express");
const app = express();
const port = process.env.PORT || 3000;    //to provide port number for hositing

app.get("/",(req,res) => {
    res.send("hello")
});

app.listen(port, () => {
    console.log('server is running at port no ${port}');
})  


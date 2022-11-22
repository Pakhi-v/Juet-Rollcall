const mongoose = require("mongoose");

// mongoose.connect("mongodb://localhost:27017/admin", {
//     useNewUrlParser: true, 

//     useUnifiedTopology: true
// }).then(() => {
//     console.log('connection successful');
// }).catch((e) => {
//     console.log('no connection');
// })
const url = `mongodb+srv://admin:pakhi123@cluster0.mrxzrrk.mongodb.net/?retryWrites=true&w=majority`;

const connectionParams={
    useNewUrlParser: true, 

    useUnifiedTopology: true
}
mongoose.connect(url,connectionParams)
    .then( () => {
        console.log('Connected to the database ')
    })
    .catch( (err) => {
        console.error(`Error connecting to the database. n${err}`);
    })
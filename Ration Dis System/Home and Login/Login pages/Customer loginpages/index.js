const express = require("express");
const mysql = require("mysql");
const bodyParser = require("body-parser");
const path=require('path');
const app = express();

const PORT = 6003;
const table = 'user_form';

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));
app.set('views',path.join(__dirname,'views'));

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'ration'
});

connection.connect((err) => {
    if (err) throw err;
    else
        console.log('\nMySQL Connected Successfully!');
});
//Login Page
app.get("/", (req, res) => {
    res.sendFile(__dirname + '/views/login.html');
});

app.post("/", (req, res) => {
    
    const smartcard = req.body.email;
    const password = req.body.password;
    
    connection.query("SELECT * FROM " + table + " WHERE smartcard = ? AND password = ?", [smartcard, password], (err, results) => {
        if (err) throw err;
        
        if (results.length > 0) {
            res.redirect('/home');
        }
        else {
            res.redirect("/");
            console.log("No results found!");
        }
        res.end();
    });
});

//Register Page
app.get("/register", (req, res) => {
    res.sendFile(__dirname + '/views/register.html');
});

app.post("/register", (req, res) => {
    const smartcard =req.body.smartcard;
    const name =req.body.name;
    const email = req.body.email;
    const password = req.body.password;
    const mobile =req.body.smartcard;
    const cardtype=req.body.cardtype;
    const location =req.body.location;
    
    connection.query("SELECT * FROM " + table + " WHERE smartcard = ?", [smartcard], (err, results) => {
        if (err) throw err;
        
        if (results.length > 0) {
            res.send("smartcard Already Exists!");
        }
        else {
            connection.query("INSERT INTO " + table + "(S no,Name,Email,Password,Phone Number,Card type,Location) VALUES(?,?,?,?,?,?,?)", [smartcard,name,email, password,mobile,cardtype,location], (err, results) => {
                if (err) throw err
                else {
                    res.redirect("/");
                }
                res.end();
            });
        }
    });
});

// When login is successful
app.get("/home", (req, res) => { 
    res.sendFile(__dirname + "/views/home.html");
});


// Listening Port
app.listen(PORT, () => {
    console.log(`Server Listening On Port: ${PORT}`);
});

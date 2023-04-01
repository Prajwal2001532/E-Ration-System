const mysql = require('mysql');
const express = require('express');
const session = require('express-session');
const path = require('path');
const port = 9000;
const app = express();
const cors = require('cors')
const bodyParser = require('body-parser')

app.use(cors())

app.use(express.json())
app.use(bodyParser.urlencoded({ extended: true }));

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'prajwal123',
    database: 'ration'
});
connection.connect(function (err) {
    if (err) throw err;
    console.log("Connected\nTable Exists\nDatabase Exists");

})
app.use(session({
    secret: 'secret',
    resave: true,
    saveUnintialized: true
}));

app.use(express.json())
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'static')));

//Admin Login------------

app.post('/auth', function (request, response) {
    let username = request.body.username;
    let password = request.body.password;

    if (username && password) {
        connection.query('Select * from admin WHERE Login_ID = ? AND password=md5(?)', [username, password], function (error, results, fields) {

            //If there issue with the query
            if (error) throw error;
            //If accountexists

            if (results.length > 0) {
                request.session.loggedin = true;
                request.session.username = username;
                response.send({ "status": true })
                return
            } else {
                response.send({ "status": false })
                return
            }
        });
    }

});

//Manager Sign in -----------------
app.post('/sign', function(request,response){
      let n = request.body.name;
      let p = request.body.password;
      let e = request.body.email;
      let loc = request.body.location;
      console.log(n);
      console.log(p);
      console.log(e);
      console.log(loc);

      if (n && p && e && loc) {
        connection.query('Insert into manager(Name,Email,Password,Location) values (?,?,md5(?),?)', [n,e,p,loc], function (error, results, fields) {
            //If there issue with the query
            if (error) throw error;
            //If accountexists

             else {
                response.send({ "status": true })
                return
             }
        });
    }
});

app.post('/sign', function(request,response){
      let n = request.body.name;
      let p = request.body.password;
      let e = request.body.email;
      let loc = request.body.location;
      console.log(n);
      console.log(p);
      console.log(e);
      console.log(loc);

      if (n && p && e && loc) {
        connection.query('Insert into manager(Name,Email,Password,Location) values (?,?,md5(?),?)', [n,e,p,loc], function (error, results, fields) {
            //If there issue with the query
            if (error) throw error;
            //If accountexists

             else {
                response.send({ "status": true })
                return
             }
        });
    }
});

app.post('/usign', function(request,response){
    let n = request.body.name;
    let p = request.body.password;
    let e = request.body.email;
    let loc = request.body.location;
    let s = request.body.smartcard;
    let pn = request.body.mobile;
    let c = request.body.cardtype;
    console.log(n);
    console.log(p);
    console.log(e);
    console.log(loc);
    console.log(s);
    console.log(pn);
    console.log(c);

    if (n && p && e && loc && s && pn && c) {
      connection.query('Insert into user values (?,md5(?),?,?,?,?,?)', [n,p,e,s,pn,c,loc], function (error, results, fields) {
          //If there issue with the query
          if (error) throw error;
          //If accountexists

           else {
              response.send({ "status": true })
              return
           }
      });
  }
});

    //Manger login after admin authorize  
    app.post('/mauth', function (request, response) {
        let username = request.body.username;
        let password = request.body.password;
        console.log(username);
        console.log(password); 
    
        if (username && password) {
            connection.query('Select * from manager WHERE email = ? AND password=md5(?) AND Approval = 1', [username, password], function (error, results, fields) {
    
                //If there issue with the query
                if (error) throw error;
                //If accountexists
    
                if (results.length > 0) {
                    request.session.loggedin = true;
                    request.session.username = username;
                    response.send({ "status": true })
                    return
                } else {
                    response.send({ "status": false })
                    return
                }
            });
        }
     });
    
    //Customer Login 
    
    app.post('/uauth', function (request, response) {
        let username = request.body.username;
        let password = request.body.password;
        console.log(username);
        console.log(password); 
    
        if (username && password) {
            connection.query('Select * from user WHERE Sno = ? AND Password = md5(?)', [username, password], function (error, results, fields) {
    
                //If there issue with the query
                if (error) throw error;
                //If accountexists
    
                if (results.length > 0) {
                    request.session.loggedin = true;
                    request.session.username = username;
                    response.send({ "status": true });
                    return
                } 
                
                else
                {
                    response.send({ "status": false });
                }
                
            });
        }
     });
    

//Admin authorize 

app.get('/amanage', function(request,response)
{   
    connection.query('Select Shop_id,Email,Location,Name from manager WHERE Approval = 0',function (error,results){
               if(error) throw error;
               if(results.length==0)
               {
                 response.send({"status":false});
                 
               }
               if(results.length>0)
               {
                response.send({"status":true,results:results});
                
               }
               
    })  
})

//Admin Disapproval
app.get('/dmanage',function(request,response){
    connection.query('Select Shop_id,Email,Location from manager WHERE Approval = 1',function (error,results){
        if(error) throw error;
        response.send(results);
    })


})


app.get('/notify',function(request,response){
    connection.query('Select Shop_id,Email,Location from manager WHERE Approval = 0',function (error,results){
        if(error) throw error;
        if(results.length>0)
           response.send({"status":true});
        else 
           response.send({"status":false});    

    })


})

//Admin Deauthorize list
//Approve Manager

app.post('/approve',function(request,response){
    
    let sid = request.body.Shop_id;
    console.log(sid);
    connection.query('Update manager SET Approval = 1 WHERE Shop_id = ?',[sid],function (error,results){
        if(error) throw error;
        response.send({"status":true});
    })

    //
    //
})

//Admin Dispapproval

app.post('/disapprove',function(request,response){
    
    let sid = request.body.Shop_id;
    console.log(sid);
    connection.query('Update manager SET Approval = 0 WHERE Shop_id = ?',[sid],function (error,results){
        if(error) throw error;
        response.send({"status":true});
    })

    //
    //
})

//Add Product API

app.post('/addpro',function(req,res){
    let pname = req.body.pname;
    let pquan = req.body.pquan;
    let price = req.body.price;
    console.log(pname);
    console.log(pquan);
    console.log(price);
    connection.query('Insert into inventory(ProductName, Quantity, Price) values(?,?,?)',[pname,pquan,price],function(error,results){
        if(error)throw error; 
        res.send({"status":true});
    })
})

app.get('/selectpro',function(req,res){
    
    connection.query('Select * from inventory',function(error,results){
        if(error)throw error; 
        res.send({results:results,"status":true});
    })
})

app.post('/delpro',function(req,res){

    let no = req.body.Productno;
    console.log(no);
    connection.query('Delete from inventory Where Productno = ? ',[no],function(err,results){
        if(err)throw err;
          res.send({"status":true , results:results});
    })
})

app.listen(port, () => console.info(`http://localhost:${port}`))
module.exports = { mysql, connection };
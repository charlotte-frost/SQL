const mysql = require('mysql');

class SQL{
    constructor(host,user,password,database){
    this.connection = mysql.createConnection({
        host:host,
        user:user,
        password:password,
        database:database
    });
}
insert(name,email,telephone,password){
    this.connection.query(`INSERT INTO user SELECT '${name}','${email}','${telephone}','${password}';`,(error,result)=>{
        if (error) throw error;
    })
}
fetch(email){
    return new Promise((resolve, reject) =>{
        this.connection.query(`SELECT * FROM user WHERE email = '${email}`,(err,result)=>{
            if (err) reject (err);
            resolve(result[1]);
        })
    })
}

}
module.exports = SQL
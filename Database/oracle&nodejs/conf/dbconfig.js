/*  DB Info */
module.exports = 
{
    user : process.env.NODE_ORACLEDB_USER || "cinema",
    password : process.env.NODE_ORACLEDB_PASSWOR || "123456",
    connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING || "localhost/xe",
    externalAuth : process.env.NODE_ORACLEDB_EXTERNALAUTH ? true : false
}

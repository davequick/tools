module.exports = {
  user          : process.env.NODE_ORACLEDB_USER || "some_username",
  password      : process.env.NODE_ORACLEDB_PASSWORD || "some_passweord",

  // For information on connection strings see:
  // https://oracle.github.io/node-oracledb/doc/api.html#connectionstrings
  connectString : process.env.NODE_ORACLEDB_CONNECTIONSTRING,
  externalAuth  : process.env.NODE_ORACLEDB_EXTERNALAUTH ? true : false
};

"use strict";
var oracledb = require('oracledb');
const util = require('util');
const _ = require ('lodash');
let statement = process.argv[2];

//select * FROM PRODCOMP.HR_HIERARCHY  WHERE ROWNUM <= 2
oracledb.getConnection(
  require('./dbconfig'),
  function(err, connection) {
    if (err) {
      console.error(err.message);
      return;
    }
    connection.execute(
      statement,
      [],  // bind value for :id
      function(err, result) {
        if (err) {
          console.error(err.message);
          doRelease(connection);
          return;
        }
        let md = _.map(result.metaData, namedItem => {  return _.lowerCase(namedItem.name)});
        result.rows.forEach( row => { console.log(JSON.stringify(_.zipObject(md, row))); });
        doRelease(connection);
      });
  });

function doRelease(connection) {
  connection.close(
    function(err) {
      if (err)
        console.error(err.message);
    });
}

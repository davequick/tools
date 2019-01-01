"use strict";
var oracledb = require('oracledb');
const _ = require ('lodash');
const stringify = require('csv-stringify');
const statement = process.argv[2];


oracledb.getConnection(
  require('./creds_aocpsm'),
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
          let stringifier = stringify({
              quotedString:true,
              quotedEmpty:false
          });
          stringifier.pipe(process.stdout);

       let columns = _.map(result.metaData, namedItem => {  return namedItem.name; });
          stringifier.write(columns);

          result.rows.forEach( row => {
              stringifier.write(row);
        });
          stringifier.end()
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

"use strict";

const os = require("os");
const http = require ("http");

function info(req) {
    const info_format = [
            [req.method, req.httpVersion, req.url],
            ["On host:", os.hostname()],
            ["NODE_ID",process.env.NODE_ID],
            ["NODE_HOSTNAME",process.env.NODE_HOSTNAME],
            ["SERVICE_ID",        process.env.SERVICE_ID],
            ["SERVICE_NAME",      process.env.SERVICE_NAME],
            ["SERVICE_LABELS",    process.env.SERVICE_LABELS],
            ["SERVICE_DNSPEERS",  process.env.SERVICE_DNSPEERS],
            ["TASK_ID",           process.env.TASK_ID],
            ["TASK_NAME",         process.env.TASK_NAME],
            ["TASK_SLOT",         process.env.TASK_SLOT],
            []
        ];

    return info_format
            .map(l=>l.join(" "))
            .join("\n");
}

http.createServer((req,res) => { res.end(info(req)); })
    .listen(3001, "0.0.0.0", ()=> {})
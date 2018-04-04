!#/bin/bash

mongo --port 21000

config = {
   _id : "shard1",
    members : [
         {_id : 0, host : "172.18.113.74:27001" },
         {_id : 1, host : "172.18.113.79:27001" },
         {_id : 2, host : "172.18.113.81:27001", arbiterOnly: true }
    ]
 }

#!/bin/bash

. ./.pws

export ECHOCONFIG=1
export DEBUGLEVEL=0
# 0 Info
# 1 Error
# 2 Debug
export ECHORECORDS=0
export FLUSHCAP=2000
export RECCAP=200
#export RECCAP=9999999999999999999999
# Setting it to this impossible number will make it load the entire file, 
# setting it to say 6000 will load first 6000 of every file if there are multiple files in a directory, nice for testing.

#export SOURCEPATHS=data/afs1-bsa-prod-fi-aric-replication/kafka-connect/AsyncOut/year=2024/month=08/day=01/hour=05
#export SOURCEPATHS=data/afs1-bsa-prod-fi-aric-replication/kafka-connect/AsyncOut/year=2024/month=08/day=01
export SOURCEPATHS=data/afs1-bsa-prod-fi-aric-replication/kafka-connect/AsyncOut/year=2024/month=08/day=01

export DEST=1
# IF 0 then no DB send
# IF 1 then MongoDB

# MongoDB
export MONGO_ROOT=mongodb
#export MONGO_USERNAME=
#export MONGO_PASSWORD=  
export MONGO_HOST=localhost
export MONGO_PORT=27017
export MONGO_DIRECT=directConnection=true 
export MONGO_DATASTORE=FiMongoDb         
export MONGO_COLLECTION=AsyncOut


python3 main.py

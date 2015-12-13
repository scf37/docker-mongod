#!/bin/bash

mkdir -p /data/logs
mkdir -p /data/data

exec mongod $@
#!/bin/bash

# run coredns
docker-compose up -d

# query our server from a client in the same subnet or from the server directly
LOCAL_IP=$(hostname -i | cut -d' ' -f1)
dig @"$LOCAL_IP" host.example.com

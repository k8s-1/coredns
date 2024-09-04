#!/bin/bash

# run coredns
docker run -d --name coredns --restart=always --volume="$(pwd)":/root/ -p 53:53/udp coredns/coredns -conf /root/Corefile

# query our server from a client in the same subnet or from the server directly
LOCAL_IP=$(hostname -i | cut -d' ' -f1)
dig @"$LOCAL_IP" host.example.com

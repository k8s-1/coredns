#!/bin/bash

docker run -d --name coredns --restart=always --volume="$(pwd)":/root/ -p 53:53/udp coredns/coredns -conf /root/Corefile

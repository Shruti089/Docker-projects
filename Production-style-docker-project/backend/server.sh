#!/bin/sh

while true
do
  echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nShell Backend API 🚀" | nc -l -p 5000
done


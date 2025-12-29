#!/bin/bash
cd "$(dirname "$0")/backend"
echo "Starting backend server..."
echo "Make sure PostgreSQL is running (or the server will work with limited features)"
node server.js

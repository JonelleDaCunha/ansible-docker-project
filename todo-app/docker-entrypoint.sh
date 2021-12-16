# docker-entrypoint.sh for node.js

echo "wait db server"
dockerize -wait tcp://db:${DB_PORT} -timeout 20s

echo "start node server"
nodemon index.js

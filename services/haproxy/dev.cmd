
docker build -f Dockerfile.local -t jduimovich/haproxy-local .

docker stop haproxy
docker rm haproxy

docker run  -it -p 8888:8080 --rm --name haproxy   jduimovich/haproxy-local
 
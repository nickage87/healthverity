Nginx container with environment dependent configuration

It accepts runtime environment variable ENVIRON,

Example:

docker run -it -d -p 8088:80 -e ENVIRON={prod,dev} \
  healthverity:release-0.2

To send container logs to cloudwatch:

docker run -it -d -p 8088:80 -e ENVIRON={prod,dev} \
  --log-driver=awslogs \
  --log-opt awslogs-group=healthverity-log-group \
  --log-opt awslogs-create-group=true \
  healthverity:release-0.2

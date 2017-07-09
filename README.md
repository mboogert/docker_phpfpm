# docker_phpfpm

This phpfpm docker image build files expects a redis service to be available on redis-svc:6379  and is primary used in conjunction with docker_nginx project and the docker hub redis image.
This phpfpm build file adds the redis module.

Website content is expected in the directory /app

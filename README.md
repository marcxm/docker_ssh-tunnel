# docker_ssh-tunnel

1. change "mypassword" to something else in Dockerfile
2. change what you need in docker-compose.yml
3. docker-compose up -d
4. run: "ssh -ND 127.0.0.1:10000 tun@docker_node_IP -p 2224 -q" to establish tunnel
5. setup local proxy to use port 10000 / socks5 or use Firefox extension "SwitchyOmega" proxy and do it there
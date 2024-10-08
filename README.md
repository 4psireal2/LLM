For lambs and rabbits

TODO

[x]: Host Docker container on GitHub Container registry


Setup after having Docker installed:
1.  Run a Docker container in detached mode

```docker run -d -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama```
(You can check active containers with `docker ps`)

2. Enter the container to run interactively

```docker exec -it ollama bin/bash```

3. Pull a model from ollama library

```
ollama pull llama3.2
```
(You might run into problems: [proxy issue due to VPN](https://github.com/ollama/ollama/issues/1417) or faulty DNS -> add Google or Cloudflare DNS `echo "nameserver 8.8.8.8" > /etc/resolv.conf | echo "nameserver 8.8.4.4" >> /etc/resolv.conf`)

4. Chat with the model
```
ollama run llama3.2
```
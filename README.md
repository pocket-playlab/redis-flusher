# redis-flusher
#### Redis database flusher
---
An easy and dirty way to flush a specific or all Redis database(s), using docker.

#### Usage

**Do it yourself way:**

Clone this repo and build it:

```
$ git clone https://github.com/pocket-playlab/redis-flusher.git
$ cd redis-flusher/
$ docker build -t redis-flusher .
```

Optional: before building the docker image, you can customize the Dockerfile by specifying parameters (arguments) to `redis-cli`. By default the `[CMD]` in the dockerfile is commented. Specifying arguments (uncommenting CMD), you will just have to run the container with no arguments:

`$ docker run --rm --name flusher redis-flusher`

Otherwise pass your own like so:

`$ docker run --rm --name flusher redis-flusher -h localhost -n 5 flushdb`

**Pulling it from dockerhub:**

>NOTE: please specify the extra arguments to be passed to `redis-cli`

`$ docker run --rm --name flusher pocketplaylab/redis-flusher -h localhost -n 5 flushdb`

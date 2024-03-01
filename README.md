## Small Go App Docker Image

Challenge to create a Docker image with less than 2MB which contains a GoLang app that prints "Full Cycle Rocks!!"

How to run:

```sh
docker run abraaolevi/fullcycle
```

Building an "empty" go app gives us a binary with around 1.9MB. Using the argument `-ldflags="-s -w"` to build it removes metadata from the final binary to make it even smaller! (around 1.2MB)
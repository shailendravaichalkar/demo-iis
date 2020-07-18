## Create a new folder demo-1 (Using CMD)
cd \
mkdir demo-1
cd demo-1
code .

## In VSCode, create a file `index.html`

```html
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    
</head>
<body>
    <h1>Solar System</h1>
    <h2>The Sun</h2>
    <p>
        The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. 
    </p>
</body>
</html>
```

## In VSCode, create another file `Dockerfile`

```dockerfile
FROM mcr.microsoft.com/windows/servercore/iis:latest
COPY index.html /inetpub/wwwroot/
```


## Build new Image
docker build -t myapp:1 .

 DOCKER BUILD         Create a new Container image using "Dockerfile"
 -t myapp:1           The name (TAG) for the newly build image
 .                    Directory path (DOT refers to CURRENT DIRECTORY)
alternate option:
    c:\users\mahendra\desktop\demo-1                   

What Happens:
1. Docker CLI (Command Line) collects all files and directories from CURRENT DIRECTORY!
    (Becouse of "DOT" at the end of command)
2. Docker CLI send all contents from step1 to Docker engine.
3. Docker Engine then search for a file "Dockerfile" inside the contents uploaded by docker CLI.
4. if found, execute all the steps from "Dockerfile"
5. Build a new image and apply TAG from "-t " switch
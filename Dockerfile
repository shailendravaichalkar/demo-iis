### Everything (including file and directory names) is Case Sensitive
### Invalid filenames: dockerfile, Dockerfile.txt, dockerfile.txt 

FROM mcr.microsoft.com/windows/servercore/iis:latest

COPY index.html /inetpub/wwwroot/
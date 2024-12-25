docker run -it --rm -e "DATABASE=localhost\\namedinstance:80" -e "PASSWORD=abc" alpine:latest env
this is an example command to pass environment variables using the cli
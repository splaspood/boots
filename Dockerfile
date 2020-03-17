FROM alpine:3.10

# ENV GIN_MODE release
EXPOSE 67 69 80
ENTRYPOINT ["/tinkerbell"]

RUN apk add --update --upgrade --no-cache ca-certificates socat
ADD tinkerbell /
ADD deploy/check* /

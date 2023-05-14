# PRODUCTION BUILD

# IMPORTANT NOTE 
# https://github.com/chemidy/smallest-secured-golang-docker-image/issues/5

FROM golang:alpine as builder

RUN mkdir /app
ADD . /app/
WORKDIR /app

RUN go build
ENTRYPOINT ["./golang-mux-gorm-boilerplate"]

EXPOSE 3000
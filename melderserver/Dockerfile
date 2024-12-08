FROM golang:1.23 AS build-stage

ARG GITUSER
ARG GITTOKEN

WORKDIR /usr/src

RUN git clone https://${GITUSER}:${GITTOKEN}@github.com/Luisg111/melderserver.git app

WORKDIR /usr/src/app

RUN go mod download && go mod verify

RUN go build -v -buildvcs=false -tags osusergo,netgo,sqlite_omit_load_extension -ldflags="-extldflags=-static" -o melderserver

FROM alpine:latest AS release-stage
RUN apk add --no-cache tzdata
RUN adduser --disabled-password app

RUN mkdir /db
RUN chown -R app:app /db

RUN addgroup app dialout

WORKDIR /home/app

USER app

COPY --chown=app:app --chmod=0755 --from=build-stage /usr/src/app/melderserver app/melderserver

ENTRYPOINT app/melderserver

EXPOSE 8080
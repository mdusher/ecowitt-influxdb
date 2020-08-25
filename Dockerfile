FROM golang:1.15-alpine as build
ADD src/ /app
WORKDIR /app
RUN go build

FROM alpine:latest
COPY --from=build /app/ecowitt-influxdb /ecowitt-influxdb
ADD docker/files/ /

ENV HTTP_PORT=4242 \
    INFLUXDB_ADDRESS="http://localhost:8086" \
    INFLUXDB_USER="ecowitt" \
    INFLUXDB_PASSWORD="ecowitt" \
    INFLUXDB_DATABASE="weather" \
    INFLUXDB_MEASUREMENT="observation"

EXPOSE 4242

CMD /docker-entrypoint.sh

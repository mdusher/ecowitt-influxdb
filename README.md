# ecowitt-influxdb in docker

This repository takes https://github.com/benjaminmurray/ecowitt-influxdb and puts it into Docker for easy deployment.

# Usage

There's a `docker-compose.yml` provided, so just:

```
docker-compose up
```

# Environment Variables

* **HTTP_PORT** `(default: 4242)` - The port for ecowitt-influxdb to listen on.
* **INFLUXDB_ADDRESS** `(default: http://localhost:8086)` - The address InfluxDB is running on.
* **INFLUXDB_USER** `(default: ecowitt)` - The user to use to access InfluxDB.
* **INFLUXDB_PASSWORD** `(default: ecowitt)` - The password to use to access InfluxDB.
* **INFLUXDB_DATABASE** `(default: weather)` - The InfluxDB database to use.
* **INFLUXDB_MEASUREMENT** `(default: observations)` - The name for the measurement to use in InfluxDB.


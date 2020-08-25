#!/bin/sh

if [ ! -f /ecowitt-influxdb.conf ]; then
  cp /ecowitt-influxdb.conf.template /ecowitt-influxdb.conf
  sed -i -e "s/{{HTTP_PORT}}/${HTTP_PORT}/" /ecowitt-influxdb.conf
  sed -i -e "s,{{INFLUXDB_ADDRESS}},${INFLUXDB_ADDRESS}," /ecowitt-influxdb.conf
  sed -i -e "s/{{INFLUXDB_USER}}/${INFLUXDB_USER}/" /ecowitt-influxdb.conf
  sed -i -e "s/{{INFLUXDB_PASSWORD}}/${INFLUXDB_PASSWORD}/" /ecowitt-influxdb.conf
  sed -i -e "s/{{INFLUXDB_DATABASE}}/${INFLUXDB_DATABASE}/" /ecowitt-influxdb.conf
  sed -i -e "s/{{INFLUXDB_MEASUREMENT}}/${INFLUXDB_MEASUREMENT}/" /ecowitt-influxdb.conf

fi

exec /ecowitt-influxdb ${@}


# ecowitt-influxdb
Program for receiving weather data using the Ecowitt protocol and storing in InfluxDB

## To build for raspberry pi
env GOOS=linux GOARCH=arm GOARM=5 go build

## To test receiving data and storing in database
./ecowitt-influxdb -test test.json 

#!/bin/sh

influx write \
  --org agro-org \
  --bucket sensores \
  --token influx-token \
  --precision s \
  "sensor_data,talhao_id=1,tipo_sensor=umidade valor=35"

influx write \
  --org agro-org \
  --bucket sensores \
  --token influx-token \
  --precision s \
  "sensor_data,talhao_id=1,tipo_sensor=temperatura valor=30"

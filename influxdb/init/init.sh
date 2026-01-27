#!/bin/sh

# Estrutura de telemetria
influx write \
  --org agro-org \
  --bucket sensores \
  --token influx-token \
  --precision ns \
  "telemetry_readings,fieldId=field-123,farmId=farm-456,sensorId=sensor-789,source=mqtt \
  readingId=\"reading-abc-123\",\
  soilHumidity=45.7,\
  soilTemperature=22.3,\
  rainMm=2.5,\
  airTemperature=28.1,\
  airHumidity=65.2 \
  1738065000000000000"

# Estrutura de alertas
# Alerta ativo
influx write \
  --org agro-org \
  --bucket sensores \
  --token influx-token \
  --precision ns \
  "field_alerts,fieldId=field-123,farmId=farm-456,alertType=Dryness \
  alertId=\"a1b2c3d4-e5f6-7890-abcd-ef1234567890\",\
  status=\"Active\",\
  active=1i,\
  reason=\"Soil moisture below 30% for more than 24 hours\",\
  severity=3i \
  1738065000000000000"

# Alerta resolvido
influx write \
  --org agro-org \
  --bucket sensores \
  --token influx-token \
  --precision ns \
  "field_alerts,fieldId=field-123,farmId=farm-456,alertType=Dryness \
  alertId=\"a1b2c3d4-e5f6-7890-abcd-ef1234567890\",\
  status=\"Resolved\",\
  active=0i \
  1738065060000000000"
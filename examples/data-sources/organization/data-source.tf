data "influxdb_organization" "iot" {
  name = "IoT"
}

output "iot_organization" {
  value = data.influxdb_organization.iot
}

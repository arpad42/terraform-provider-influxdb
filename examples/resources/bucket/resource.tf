provider "influxdb" {}

data "influxdb_organization" "iot" {
  name = "IoT"
}

resource "influxdb_bucket" "signals" {
  org_id         = data.influxdb_organization.iot.id
  name           = "signals"
  description    = "This is a bucket to store signals"
  retention_days = 14
}

output "signals_bucket" {
  value = influxdb_bucket.signals
}

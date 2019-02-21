# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

// Checking local.wait forces the outputs to resolve after the null_resource has executed,
// otherwise they immediately resolve due to not having any references to the DAG
output "gcloud" {
  description = "Path to gcloud CLI"
  value       = "${local.wait > 0 ? local.gcloud : local.gcloud}"
}

output "bq" {
  description = "Path to bq CLI"
  value       = "${local.wait > 0 ? local.bq : local.bq}"
}

output "gsutil" {
  description = "Path to gsutil CLI"
  value       = "${local.wait > 0 ? local.gsutil : local.gsutil}"
}

output "kubectl" {
  description = "Path to kubectl CLI. Must be installed first using additional_components"
  value       = "${local.wait > 0 ? local.kubectl : local.kubectl}"
}

output "gcloud_bin_path" {
  description = "Path to gcloud bin path for use to locate any other components"
  value       = "${local.wait > 0 ? local.gcloud_bin_path : local.gcloud_bin_path}"
}

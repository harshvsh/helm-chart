#!/usr/bin/env bash

set -e

helm package ../ssm/chart/ssm-service
helm repo index --url https://dperaza4dustbit.github.io/helm-chart/ .

date_s="$(date +%s)"
git add -A
git commit -a -m "Published charts $date_s"
git push origin main
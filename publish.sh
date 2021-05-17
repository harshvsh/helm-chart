#!/usr/bin/env bash

set -e

helm package ../ssm/chart/psql-service
helm package ../ssm/chart/psql-service1
helm package ../ssm/chart/psql-service2
helm package ../ssm/chart/psql-service3
helm package ../ssm/chart/ssm-service
helm package ../ssm/chart/ssm-service-plus-db
helm repo index --url https://dperaza4dustbit.github.io/helm-chart/ .

date_s="$(date +%s)"
git add -A
git commit -a -m "Published charts $date_s"
git push origin main
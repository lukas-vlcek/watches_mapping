#!/usr/bin/env bash

source ./configure_env.sh

#curl -X DELETE $ES_URL/*

curl -X POST ${ES_URL}/_template/watches_defaults_2-4        -d@${INDEX_TEMPLATES_DIR}/watches_defaults_2-4-X.template.json
curl -X POST ${ES_URL}/_template/watches_cluster_health_2-4  -d@${INDEX_TEMPLATES_DIR}/watches_cluster_health_2-4-X.template.json
curl -X POST ${ES_URL}/_template/watches_cluster_stats_2-4   -d@${INDEX_TEMPLATES_DIR}/watches_cluster_stats_2-4-X.template.json
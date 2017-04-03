#!/usr/bin/env bash

if [[ $1 == "-v" ]]; then
  set -x
fi

WORK_DIR=${WORK_DIR:-.}
INDEX_TEMPLATES_DIR=${INDEX_TEMPLATES_DIR:-$WORK_DIR/..}
ES_URL=${ES_URL:-http://localhost:9200}

ES_BIN=${ES_BIN:-elasticsearch}

PATH_WATCHES_LOGS=${PATH_WATCHES_LOGS:-$WORK_DIR/logs}
PATH_WATCHES_CLUSTER_HEALTH_LOGS=${PATH_WATCHES_CLUSTER_HEALTH_LOGS:-$PATH_WATCHES_LOGS/cluster_health.log}
PATH_WATCHES_CLUSTER_STATS_LOGS=${PATH_WATCHES_CLUSTER_STATS_LOGS:-$PATH_WATCHES_LOGS/cluster_stats.log}
PATH_WATCHES_NODES_STATS_LOGS=${PATH_WATCHES_NODES_STATS_LOGS:-$PATH_WATCHES_LOGS/nodes_stats.log}
PATH_WATCHES_INDICES_STATS_LOGS=${PATH_WATCHES_INDICES_STATS_LOGS:-$PATH_WATCHES_LOGS/indices_stats.log}

export PATH_WATCHES_CLUSTER_HEALTH_LOGS
export PATH_WATCHES_CLUSTER_STATS_LOGS
export PATH_WATCHES_NODES_STATS_LOGS
export PATH_WATCHES_INDICES_STATS_LOGS


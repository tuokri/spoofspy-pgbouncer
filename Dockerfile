FROM bitnami/pgbouncer:1.21.0

RUN sed -i \
    's@export PGBOUNCER_BASE_DIR="${BITNAMI_ROOT_DIR}/pgbouncer"@export PGBOUNCER_BASE_DIR="/home/1001/pgbouncer"@' \
    /opt/bitnami/scripts/pgbouncer-env.sh

USER root

RUN mkdir -p /home/1001/pgbouncer/conf/ \
    && mkdir -p /home/1001/pgbouncer/logs/ \
    && mkdir -p /home/1001/pgbouncer/tmp/ \
    && chown 1001:1001 /home/1001/pgbouncer/conf/ \
    && chown 1001:1001 /home/1001/pgbouncer/logs/ \
    && chown 1001:1001 /home/1001/pgbouncer/tmp/

USER 1001

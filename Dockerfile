FROM python:3.10-alpine

RUN set -x \
    && apk add --no-cache \
        bash \
        jq \
        postgresql-client \
    && pip install --no-cache-dir \
        awscli

COPY rootfs/ /

CMD ["/entrypoint"]

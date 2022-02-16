FROM python:3.11.0a5-alpine3.15

RUN set -x \
    && apk add --no-cache \
        bash \
        jq \
        postgresql-client \
    && pip install --no-cache-dir \
        awscli

COPY rootfs/ /

CMD ["/entrypoint"]

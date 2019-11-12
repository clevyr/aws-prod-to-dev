FROM python:alpine

RUN set -x \
    && apk add --no-cache \
        bash \
        postgresql-client \
    && pip install --no-cache-dir \
        awscli

COPY rootfs/ /

CMD ["/entrypoint"]

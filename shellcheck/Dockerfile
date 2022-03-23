FROM koalaman/shellcheck-alpine:v0.8.0

RUN apk add --no-cache git

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]

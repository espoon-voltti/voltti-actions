FROM koalaman/shellcheck-alpine:v0.11.0

RUN apk add --no-cache git

COPY entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]

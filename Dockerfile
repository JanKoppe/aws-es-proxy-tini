FROM abutaha/aws-es-proxy:v1.1
RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "-e 2", "--", "/usr/local/bin/aws-es-proxy"]
CMD ["-pretty"]

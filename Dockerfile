FROM atsuio/k8slynter:latest

COPY entrypoint.sh /entrypoint.sh
#COPY test.yaml /test.yaml

ENTRYPOINT ["/entrypoint.sh"]

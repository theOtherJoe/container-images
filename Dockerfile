FROM scratch
ADD amzn2-container-raw-2.0.20220316.0-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-3c9668ec048dfa6db814960c8f21d657525398c311820322e74a0cd5c740a565.tar.gz" \
 && echo "28f895ddb81eab8d861e7f1adc7c54a47146dc14956644e699d4eb9ead29f515  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -

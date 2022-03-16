FROM scratch
ADD al2022-container-2022.0.20220308.1-arm64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-fa0d04ab17f6ae9cb1de39ab5dad52c2e6d9fb369f43679b2f6a0c9e5d12c284.tar.gz" \
 && echo "35ebd0b74ac0b0422bf72c99f18fd2a38f226202adf6ee9271c52cf2ea7d3df0  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -

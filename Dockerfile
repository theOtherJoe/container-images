FROM scratch
ADD amzn-container-minimal-2018.03.0.20220315.0-x86_64.tar.xz /
CMD ["/bin/bash"]
RUN mkdir /usr/src/srpm \
 && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-1955409f03009ae852836cca134addda0273353334d33438c74060317a23bd38.tar.gz" \
 && echo "3d9d1fa76eb7d2d554881174fd0f92549d482d99b6f60822dd59173789b14ddc  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -

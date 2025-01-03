FROM debian:bookworm

RUN <<END
# install prerequisites
set -e
apt-get update

apt-get install -qy \
  apt-transport-https \
  apt-utils \
  ca-certificates \
  cpanminus \
  git \
  make \
  python3-git \
  python3-pip \
  python3-sphinx \
  python3-sphinx-rtd-theme \
  rsync \
  ;

cpanm -q Pod::POM::View::Restructured
END

WORKDIR /app
COPY build-cyrus-site build-cyrus-site

# ENTRYPOINT /app/build-cyrus-site
CMD [ "/bin/bash" ]

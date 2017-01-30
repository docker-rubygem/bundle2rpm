FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.0.4

RUN gem install bundle2rpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundle2rpm"]
CMD ["--help"]

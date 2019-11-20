FROM node:10.15

MAINTAINER Vlad Lyamzin <vlyamzin@corevalue.net>

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.license="MIT" \
      org.label-schema.name="office-addin-scripts-angular-cli-firebase" \
      org.label-schema.description="Docker image based on NodeJS with Office Add-in Scripts, Angular CLI and Firebase Tools installed." \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/vlyamzin/office-addin-scripts-angular-cli-firebase" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# Commands
RUN \
  yarn global add webpack @angular/cli firebase-tools

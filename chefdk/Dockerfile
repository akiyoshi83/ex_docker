FROM centos:7
MAINTAINER akiyoshi83 "mail@akiyoshi.info"

ARG GIT_NAME `git config --get user.name`
ARG GIT_EMAIL `git config --get user.email`

ADD install.sh install.sh
RUN bash install.sh && rm install.sh && mkdir /src
RUN git config --global user.name "$GIT_NAME" && git config --global user.email $GIT_EMAIL

VOLUME ["/src"]
WORKDIR /src
CMD ["bash"]

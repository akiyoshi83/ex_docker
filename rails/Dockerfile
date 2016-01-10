# Railsプロジェクトを作成する前から使い始めるのを
# 想定しているのでONBILDでない方を使う。
FROM ruby:2.3.0
MAINTAINER akiyoshi83

EXPOSE 3000

# すでにGemfileがある場合はbundlerだけあれば良いはず。
RUN gem install bundler
RUN gem install rails

# WORKDIRはdocker-compose.ymlでも設定できるようだがどちらが良いのか。
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

CMD /bin/sh


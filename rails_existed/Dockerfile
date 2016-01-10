# Gemfile, Gemfile.lockがないと失敗するので
# 最初はtouchで作成してコンテナを作成してからrails newする作業が必要。
#FROM ruby:2.3.0-onbuild
# onbuildは数行足しているだけなのでなくても十分。
# 細かく制御するならむしろない方が良さそう。
FROM ruby:2.3.0
MAINTAINER akiyoshi83

EXPOSE 3000

RUN gem install bundler

# 疑問:コンテナの中は全部rootで実行してるけど良いのか？
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install

# 開発時はmountしたいがデプロイ時は不要なのでdocker-compose.ymlでやる予定。
COPY . /usr/src/app

# 作成したてでDBがない場合はdocker exec -it コンテナ名 bin/rake db:createする
CMD ["bin/rails", "s", "-b", "0.0.0.0"]


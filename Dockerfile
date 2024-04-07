FROM jekyll/jekyll:pages

RUN apk add --update --no-cache build-base libffi-dev

# GemfileとGemfile.lockをコンテナ内にコピー
COPY . /srv/jekyll
# COPY Gemfile.lock /srv/jekyll/

# ワーキングディレクトリを設定
WORKDIR /srv/jekyll

# 必要なgemをインストール
RUN bundle install

# 以前のRUNコマンドは不要になるので、削除します。
# RUN gem install webrick

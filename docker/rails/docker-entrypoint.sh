#!/usr/bin/env bash
if [ -f Gemfile ]; then
    rm -rf /rails-pre
else
    mv /rails-pre/* /rails-app/
    mv /rails-pre/.?** /rails-app/
    rmdir /rails-pre
fi

#グローバルにインストールしたらvendor/bundle以下が軽くなるので動作早くなる
bundle install --jobs=4

#gemの中身をデバッグしたい時とかは、vendor/bundle内にgemを置いてる方が見やすいのでこっちを使う
#bundle install --path=vendor/bundle --jobs=4


#rails s する前にserver.pid消すよう追加
rm -f tmp/pids/server.pid

#バッチの内容をcornへ反映
#whenever --update-crontab

#cronを起動
crond

# debugモードに切り替える設定
  #bundle exec rdebug-ide --host 0.0.0.0 --port 1234 --dispatcher-port 26162 -- bin/rails s -b 0.0.0.0
  #bundle exec rdebug-ide --host 0.0.0.0 --port 1234 -- bin/rails s -b 0.0.0.0
  bundle exec rails s -p 3000 -b '0.0.0.0'

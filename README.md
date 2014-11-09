aerial.st
=========

環境
------------

### Pow + Middleman::PreviewServer

ローカルではMiddlemanのプレビュー機能をPowで動かすために`config.ru`で`Middleman::PreviewServer`を起動するようにしている。

### Heroku + Puma + assets:precompile

Heroku上では`git push`した際に`rake assets:precompile`のタイミングで`middleman build`を実行することでデプロイ時にコンパイルしている。
それらのファイルは静的に配信されるので`Rack::TryStatic`を使っている。
その設定には、`config.ru`がローカルでのPow用に使われているため、`heroku.ru`を別途用意して使っている。

    Foreman(Procfile) -> puma.rb -> Rack(heroku.ru)

ドメイン
--------

Route53を使って[ゴニョゴニョ](https://devcenter.heroku.com/articles/route-53#naked-root-domain)している。

---
layout: post
title: ! 'middlemanをv4にupdateした。'
published: true
date: 2018-02-12
comments: true
tags:
- Middleman
---

久しぶりにブログ書こうとして手元でまずmiddlemanが動かせなかったので諸々改修した。

その際にぶつかった問題について記録しておく。

今回のこのブログに使用しているmiddlemanのupdateのversionは `3.1.4` から `4.0.0` へのupdate。

### 主な改修範囲

- middlemanは現時点で4.2.1まで出ているがとりあえず手元で安定して動かせるところまでversionを指定し直して、`$ bundle update`

~~~ruby
gem "middleman", "~> 4.0.0"
gem "middleman-blog", "~> 4.0.2"
~~~

- html5に対応する

~~~ruby
#cofig.rb
set :haml, { :format => :html5 }
~~~

- 各ブログ記事の拡張子は `.markdown` だったのを `.html.markdown` に変更
- middleman-syntaxがv4に対応してなかったようなので、markdown engineを `redcarpet` から `kramdown` に変更。

~~~ruby
#cofig.rb
set :markdown_engine, :kramdown
set :markdown, 'syntax_highlighter' => 'rouge',
    'syntax_highlighter_opts' => {
      'span' => {'disable' => true}
    }
~~~

- code blockの記述について、Redcarpetのfenced_code_blocksからチルダ３つ `~~~` のLanguage of Code Blocks に変更

- middleman-deployを `1.0.0` から `2.0.0.pre.alpha` へupdate

~~~ruby
gem 'middleman-deploy', '~> 2.0.0.pre.alpha'
~~~

- middleman-deployのdeploy methodの指定について、 `deploy` から `deploy_method` に変更

~~~ruby
#cofig.rb
activate :deploy do |deploy|
  deploy.deploy_method = :git
end
~~~

---

#### 参考にしたURL:

- [middleman-blogのハイライトにMonokaiテーマを使う](http://3100.github.io/blog/2013/10/31/monokai-theme-to-middleman-blog.html)
- [Middleman v4でシンタックスハイライト](https://diary.kitaitimakoto.net/2015/11/07.html)
- [Support for Middleman v4?](https://github.com/middleman-contrib/middleman-deploy/issues/93)

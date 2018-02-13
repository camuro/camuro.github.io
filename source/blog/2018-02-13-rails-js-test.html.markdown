---
layout: post
title: ! 'Railsアプリのjsのテストをしたい'
published: true
date: 2018-02-13
comments: true
tags:
- Circle CI
- Rails
- js
- node
- Rake
- poltergeist
---

Railsアプリでフロント側にカンタンなvue.jsの実装を追加した為、jsもテストすることに。
feature specを書く時に `js: true` を追加が必要になる。

~~~ ruby
feature "sample", js: true do
  background { visit "/sample" }

  scenario "アクセスできる" do
    expect(page).to have_content("ページタイトル")
  end
end
~~~

ローカルでrakeも通るようになり、いざPRを出したとことCIでテストが失敗する。

CIはCircle CIを使っていたが、CI上でphantom.jsのエラーが発生していた。

~~~
Cliver::Dependency::VersionMismatch:
       Could not find an executable 'phantomjs' that matched the requirements '~> 1.8', '>= 1.8.1'. Found versions were {"/usr/local/bin/phantomjs"=>"2.1.1"}.
~~~

circleci.ymlに記載されているdocer imageが `circleci/ruby:2.3.6-node` だった為、jsのテストが出来る状態でなかった。

ここを `circleci/ruby:2.3.6-node-browsers` に変更した。

~~~yaml
jobs:
  test:
    docker:
      - image: circleci/ruby:2.3.6-node-browsers
~~~


> circleci/ruby:2.4.1-nodeだとchromeとかxvfb入ってない

参照: [circleci/ruby:2.4.1-node-browsersって何入ってるのか知りたかった](https://qiita.com/inuscript/items/09d15ee52b1657872f80)

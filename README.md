# swift-definitive-guide-2nd-edition-study

[![Build Status](https://travis-ci.org/raimon49/swift-definitive-guide-2nd-edition-study.svg?branch=master)](https://travis-ci.org/raimon49/swift-definitive-guide-2nd-edition-study)

『詳解Swift第2版』に登場するコードの写経や学習用

## TOC

* [CHAPTER01](Chapter-01) Swiftでプログラミング
* [CHAPTER02](Chapter-02) 関数
* [CHAPTER03](Chapter-03) 構造体
* [CHAPTER04](Chapter-04) オプショナル
* [CHAPTER05](Chapter-05) 基本的なデータ型
* [CHAPTER06](Chapter-06) パターン
* [CHAPTER07](Chapter-07) 演算子
* [CHAPTER08](Chapter-08) クラスと継承
* CHAPTER09 メモリ管理
* CHAPTER10 プロトコル
* CHAPTER11 拡張
* CHAPTER12 エラー処理
* CHAPTER13 クロージャ
* CHAPTER14 ジェネリクス
* CHAPTER15 C/Objective-Cとのデータ受け渡し
* CHAPTER16 Objective-Cとの連携

## Environment

* OS X El Capitan
    * `10.11.4（15E65）`
* Xcode 7.3.1
    * `Version 7.3.1 (7D1014)`
* Swift 2.2
    * `Apple Swift version 2.2 (swiftlang-703.0.18.8 clang-703.0.31)`

## How to running

```sh
# Run with filename
$ swift Chapter-01/about-array.swift

# Run all
$ find . -d 2 -name "*.swift" -print | xargs -I {} swift {}
```

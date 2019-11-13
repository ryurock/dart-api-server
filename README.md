## 参考記事

* 写経はこちら
  * https://qiita.com/hirotakan/items/698c1f5773a3cca6193e
* ディレクトリ構成参考はこちら
  * http://nakawatch.hatenablog.com/entry/2018/07/11/181453


## ディレクトリ構成

Clean Architectureを採用しています

![クリーンアーキテクチャ](https://qiita-user-contents.imgix.net/https%3A%2F%2Fqiita-image-store.s3.amazonaws.com%2F0%2F44142%2Fa7643c53-8cc0-b079-0745-a20f06f23372.jpeg?ixlib=rb-1.2.2&auto=compress%2Cformat&gif-q=60&s=bdc45ec879d0463794ed2aeb7f43bb02)


| ディレクトリ | レイヤー                  |
|--------------|---------------------------|
| drivers      | frameworks & drivers      |
| adapter      | Interface Adapter         |
| usecase      | app business rules        |
| domain       | enterprise business rules |

![図の解説](https://qiita-user-contents.imgix.net/https%3A%2F%2Fqiita-image-store.s3.amazonaws.com%2F0%2F293368%2F578d4b20-bd79-1933-e08d-9f6cf306e605.jpeg?ixlib=rb-1.2.2&auto=compress%2Cformat&gif-q=60&w=1400&fit=max&s=4f7bdcb5466ad4fd293c91375f8f2589)

```
lib/src
├── adapter
│   ├── controllers
│   │   └── task_controller.dart
│   └── db
│       ├── sql_handler.dart (interface)
│       └── task_repository.dart 
├── domain
│   └── task.dart
├── drivers
│   ├── db
│   │   └── mysql_handler.dart
│   └── http
│       └── router.dart
└── usecase
    └── interfaces
        ├── task_interactor.dart
        └── task_repository.dart (interface)
```

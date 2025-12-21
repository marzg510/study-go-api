# study-go-api

## See

- https://zenn.dev/isawa/articles/069cff08d64904
- https://qiita.com/y_murotani/items/1c1a93fba22035b45d6a
- [Go言語で基本的なCRUD操作を行うREST APIを作成](https://dev.classmethod.jp/articles/go-sample-rest-api/)
- [GoとGinでRESTful APIを開発する](https://zenn.dev/urakawa_jinsei/articles/e5ba6eea41f96b)
- [Go言語でつくるREST API開発 2024年版](https://zenn.dev/o_ga/books/dc6c7b055b65a3)

## Build Environment memo

```
go get -u github.com/gin-gonic/gin
go get -u gorm.io/gorm
go get -u gorm.io/driver/postgres
```

## Exec

go run main.go


## Build Image

```
docker build -t sfa-ecr-gotowork .
docker build -t go-hello-world-app .
```

docker run -d -p 8080:8080 --name go-app go-hello-world-app:latest

## Push to ECR

## Develop RESTful API

- [GoとGinでRESTful APIを開発する](https://zenn.dev/urakawa_jinsei/articles/e5ba6eea41f96b)

```bash
cd web-service-gin
go get .
go run .
```

### See

- [OpenAPI を実装する Go サーバー oapi-codegen と ogen を比較](https://zenn.dev/otakakot/articles/43653194611d42)
- [Go言語のWebフレームワーク徹底比較](https://qiita.com/shioccii/items/72529ed888117e665186)
- [Go言語　フレームワーク比較](https://zenn.dev/skrikzts/articles/2ba3a0f9fca265)
- [Go言語おすすめフレームワーク10選と特徴を解説【2025年最新】](https://freelance.techcareer.jp/articles/wp/skills/go/detail/18989/)

- [Claudeに聞いた](https://claude.ai/share/b8d6d51a-cb9f-404c-84ba-9f1557a068d2)
  - Echo + oapi-codegenがよいとのこと


#### Echo + oapi-codegen
[\[Go\] OpenAPI コード自動生成でビジネスロジックに集中する開発へ](https://qiita.com/TomohiroSakai/items/1c259750352b49e96a18)

[OpenAPIのYAMLから、Go言語のWebサービスを作ったメモ](https://qiita.com/MahoTakara/items/13c84df840aca94c3155)

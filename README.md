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


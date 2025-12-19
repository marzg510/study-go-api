# ビルドステージ
FROM public.ecr.aws/docker/library/golang:1.25.5-alpine AS builder

COPY certadmin.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

WORKDIR /app

# 依存関係を先にコピー（キャッシュ効率化）
COPY go.mod go.sum ./
RUN go mod download

# ソースコードをコピー
COPY . .

# 静的リンクでビルド
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o main .

# 実行ステージ（最小イメージ）
FROM public.ecr.aws/docker/library/alpine:latest

WORKDIR /root/

# ビルドステージからバイナリをコピー
COPY --from=builder /app/main .

EXPOSE 8080

CMD ["./main"]
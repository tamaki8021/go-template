# イメージを取得
FROM golang:latest

# ディレクトリをコンテナ内に作成
RUN mkdir /go/src/app

# 作業ディレクトリにする
WORKDIR /go/src/app

# ローカルディレクトリをコンテナ内にコピー
COPY go.mod go.sum ./

RUN go mod download

COPY . /go/src/app


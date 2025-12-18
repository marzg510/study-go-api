FROM public.ecr.aws/docker/library/golang:1.25.5-bookworm

COPY certadmin.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

# RUN go get -u github.com/gin-gonic/gin
WORKDIR /workspaces

CMD ["sleep", "infinity"]

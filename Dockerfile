# BUILDING THE IMAGE FROM AN OFFICIAL IMAGE
FROM golang:1.15-alpine AS builder
RUN mkdir /app
WORKDIR /app
COPY ./hello.go .

# USE -ldflags='-s -w' to shrink the binary
# Fonte: https://words.filippo.io/shrink-your-go-binaries-with-this-one-weird-trick/
RUN GOOS=linux go build -o /app/hello -ldflags='-s -w' .

FROM scratch 
WORKDIR /app
COPY --from=builder /app/hello ./hello
CMD ["./hello" ]
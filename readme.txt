# download github project
git clone https://github.com/kskalvar/docker-golang-helloworld.git


# development
docker run -it --rm -v /c/Users/kskalvar/git/docker-golang-helloworld:/go/src/myapp -w /go/src/myapp golang:1.8 /bin/bash
go-wrapper download
go-wrapper install
go-wrapper run

# build runtime
docker build -t myapp-golang-runtime .


# run
docker run --rm myapp-golang-runtime

# debug runtime
docker run -it --rm myapp-golang-runtime /bin/bash

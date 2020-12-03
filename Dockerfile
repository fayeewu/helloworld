FROM golang:1.13-alpine as builder

# add the current build context
ADD . /go/src/github.com/fayeewu/helloworld

# compile the binary
RUN cd /go/src/github.com/fayeewu/helloworld && go install -v .

EXPOSE 80

ENTRYPOINT ["/go/bin/helloworld"]

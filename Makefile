all:
	docker build -t fayeewu/helloworld .

run:
	docker run -d -P fayeewu/helloworld

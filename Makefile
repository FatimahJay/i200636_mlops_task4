
build:
    docker build -t myflaskapp .

run:
    docker run -p 5000:5000 myflaskapp

stop:
    docker stop $(docker ps -q --filter ancestor=myflaskapp)

clean:
    docker rm $(docker ps -a -q --filter ancestor=myflaskapp)

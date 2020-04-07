# rzmqdb
R ZeroMQ Database

## Build container
```
docker build -t rzmqdb . --no-cache
```

## Start container
```
docker run -d --name="rzmqdb" -p 5555:5555 rzmqdb && docker logs -f rzmqdb
```

## Stop container
```
docker stop rzmqdb
```

## Run container
```
docker start rzmqdb
```

# How to use R ZeroMQ Database
To start using the R ZeroMQ Database container, you must use the [R ZeroMQ Database Driver](https://github.com/aborderon/rzmqdb-driver).

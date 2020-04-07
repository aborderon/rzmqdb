# rzmqdb
R ZeroMQ Database

## Overview
R ZeroMQ Database provides a quick, easy and flexible way to store data in-memory.

Rzmqdb uses [fst](https://www.fstpackage.org/) to compress data. 
> The fst package for R provides a fast, easy and flexible way to serialize data frames. With access speeds of multiple GB/s, fst is specifically designed to unlock the potential of high speed solid state disks that can be found in most modern computers. Data frames stored in the fst format have full random access, both in column and rows.

## How to use this image

This will start a rzmqdb instance listening on the default rzmqdb port of 5555.
```
docker run -d --name="rzmqdb" -p 5555:5555 aborderon/rzmqdb && docker logs -f rzmqdb
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

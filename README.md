# rzmqdb
R ZeroMQ Database

## Overview
R ZeroMQ Database provides a quick, easy and flexible way to store data in-memory.

Rzmqdb uses [fst](https://www.fstpackage.org/) to compress data. 
> The fst package for R provides a fast, easy and flexible way to serialize data frames. With access speeds of multiple GB/s, fst is specifically designed to unlock the potential of high speed solid state disks that can be found in most modern computers. Data frames stored in the fst format have full random access, both in column and rows.

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

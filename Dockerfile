FROM r-base

# Installation from source requires ZeroMQ.
RUN apt-get update && apt-get install -y libzmq3-dev

# copy everything else and build app
COPY . /usr/local/src/scripts
WORKDIR /usr/local/src/scripts

# dependencies
RUN R -e 'install.packages(c("rzmq", "fst", "futile.logger"))'

CMD ["Rscript", "storage.R"]

# expose or open the TCP port to the host computer
EXPOSE 5555/tcp
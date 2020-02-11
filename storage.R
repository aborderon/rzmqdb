#!/usr/bin/env Rscript
library(rzmq)
library(futile.logger)
library(fst)

context = init.context()
socket = init.socket(context,"ZMQ_REP")
bind.socket(socket,"tcp://*:5555")

flog.info("Initialization start on socket port 5555")

while(TRUE) {
  msg = receive.socket(socket);

  out <- tryCatch({

    flog.info(paste0("RECEIVE FUNCTION : ", msg$fun))

    if(!is.null(msg$args)){

      fields <- lapply(msg$args, function(x) {
        assign(x[[1]], x[[2]], envir = .GlobalEnv)
        return(x[[1]])
      })

      ans <- eval(parse(text = msg$fun))

      rm(list = as.character(fields))
      rm('fields')
    }else{
      ans <- eval(parse(text = msg$fun))
    }
    send.socket(socket,ans);
    flog.info("SEND SUCCESS SOCKET")
    rm('ans')
  }, warning = function(w) {
    send.socket(socket,w);
    flog.warn("SEND WARNING SOCKET")
  }, error = function(e) {
    send.socket(socket,e);
    flog.error("SEND ERROR SOCKET")
  })
}
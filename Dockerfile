FROM h2non/imaginary:latest

ENV PORT "9000"

CMD ["-enable-url-source","-http-read-timeout" ,"3"]

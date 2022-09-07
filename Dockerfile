FROM h2non/imaginary:latest

ENV PORT "8080"

CMD ["-enable-url-source","-http-read-timeout" ,"3"]

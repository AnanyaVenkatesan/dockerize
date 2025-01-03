# Example for dockerization
# Fri Jan  3 12:14:58 PST 2025
FROM ubuntu:22.04
RUN apt update -y && apt upgrade -y 
RUN mkdir /dummy
COPY showdate /dummy
RUN chmod +x /dummy/showdate
ENTRYPOINT ["/dummy/showdate"]

FROM alpine:3.10

RUN ls
COPY test.sh .
RUN ls

CMD exit 0

FROM alpine
RUN apk add --no-cache netcat-openbsd
COPY server.sh /server.sh
RUN chmod +x /server.sh
CMD ["sh", "/server.sh"]


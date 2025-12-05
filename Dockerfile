FROM alpine
WORKDIR /app
COPY writer.sh .
COPY reader.sh .
RUN chmod +x writer.sh reader.sh



FROM java:8u40

VOLUME /app
VOLUME /root/.ivy2

EXPOSE 9000

WORKDIR /app
CMD ["./activator", "run"]

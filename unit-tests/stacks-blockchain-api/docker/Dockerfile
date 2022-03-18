FROM blockstack/stacks-blockchain-api:1.0.4

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

CMD /wait && node "./lib/index.js"


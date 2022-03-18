FROM blockstack/stacks-blockchain:2.05.0.0.0

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.9.0/wait /wait
RUN chmod +x /wait

CMD /wait && stacks-node start --config=/app/config/Stacks.toml

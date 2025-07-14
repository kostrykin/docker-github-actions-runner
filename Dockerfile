FROM myoung34/github-runner:latest
LABEL maintainer="leonid.kostrykin@bioquant.uni-heidelberg.de"

WORKDIR /actions-runner
RUN mv /entrypoint.sh /entrypoint-base.sh
COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["./bin/Runner.Listener", "run", "--startuptype", "service"]


FROM --platform=$BUILDPLATFORM ghcr.io/massimo-nocentini/sgb.cweb:master

COPY src /home/sat-solvers

RUN rm -rf c pdf && cd sat-solvers && make && make install && cd .. && rm -rf sat-solvers
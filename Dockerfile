FROM debian:stable-slim

ENV DEBIAN_FRONTEND noninteractive

# Install lgogdownloader
RUN apt-get update \
 && apt-get install -y lgogdownloader expect

COPY login /usr/local/bin 
COPY start.sh /usr/local/bin
RUN chmod a+rx /usr/local/bin/login /usr/local/bin/start.sh \
 && chmod uga-w /usr/local/bin/login /usr/local/bin/start.sh

# Add user
RUN useradd -m -u 1000 user
USER user
WORKDIR /home/user/

ENTRYPOINT ["/usr/local/bin/start.sh"]
CMD ["--help"]

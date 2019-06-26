FROM httpd

RUN apt-get update && apt-get -y install perl-debug curl build-essential libperl-dev

RUN curl -fsSL --compressed https://git.io/cpm > /usr/local/bin/cpm && \
    chmod +x /usr/local/bin/cpm

RUN cpm install -gv mod_perl2
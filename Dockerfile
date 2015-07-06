FROM alpine

RUN apk --update add git python-dev openssl-dev py-pip libffi-dev libxml2-dev libxslt-dev pkgconfig postgresql-dev mariadb-dev libvirt-dev graphviz sqlite-dev
RUN pip install tox

WORKDIR $HOME
RUN git clone https://github.com/BenoitKnecht/nova.git

ENTRYPOINT ["/bin/sh"]

FROM sagemathinc/cocalc

LABEL maintainer "Gabriel Gazola Milan <gabriel.gazola@poli.ufrj.br>"

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

USER root
SHELL [ "/bin/bash", "-c" ]
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Adding ATLAS kernel
RUN pip3 install --upgrade pip
RUN pip3 install -U virtualenv
RUN mkdir /usr/env && cd /usr/env && git clone https://github.com/gabriel-milan/atlas-env && cd atlas-env && ./generate_env.sh --pip --saphyra --root --prometheus
COPY files/atlas /usr/local/share/jupyter/kernels/atlas

CMD /root/run.py

EXPOSE 443

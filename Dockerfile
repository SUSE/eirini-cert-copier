FROM opensuse/leap:15.1

ADD https://storage.googleapis.com/kubernetes-release/release/v1.13.0/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl 

COPY copy.sh /
RUN chmod +x /copy.sh

ENTRYPOINT [ "/bin/bash",  "-c", "/copy.sh" ]

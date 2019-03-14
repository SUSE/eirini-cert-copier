FROM opensuse/leap:15.1

COPY copy.sh /
RUN chmod +x /copy.sh

ENTRYPOINT [ "/bin/bash",  "-c", "/copy.sh" ]

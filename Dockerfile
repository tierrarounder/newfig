FROM fedora:latest
RUN yum install -y figlet
ENTRYPOINT [ "figlet" ]
CMD ["ur Mom"]

FROM registry.access.redhat.com/ubi8/ubi-minimal
MAINTAINER dogren@redhat.com
RUN rpm -i https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm \
 && microdnf install stress \
 && microdnf clean all
ENV CPU_WORKERS=3
CMD stress --cpu $CPU_WORKERS
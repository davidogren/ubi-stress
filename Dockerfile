FROM registry.access.redhat.com/ubi8/ubi-minimal
MAINTAINER dogren@redhat.com
RUN ["rpm","-i","https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm"]
RUN ["microdnf","install","stress"]
CMD ["stress","--cpu","3"]
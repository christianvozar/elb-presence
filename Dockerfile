# Docker Definition for ELB Presence Utility

FROM busybox:ubuntu-14.04
MAINTAINER Christian R. Vozar <cvozar@civisanalytics.com>

ADD cmd/elb-presence /elb-presence
RUN chmod +x /elb-presence

# Certificates required for Go's crypto/x509 package; utilized by HTTPS client.
ADD http://curl.haxx.se/ca/cacert.pem /etc/ssl/ca-bundle.pem

CMD ["/elb-presence"]

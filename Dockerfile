FROM centos:latest
ENV SQUID_CACHE_DIR=/var/spool/squid \
    SQUID_LOG_DIR=/var/log/squid
RUN yum install -y squid
COPY entrypoint.sh /sbin/entrypoint.sh
RUN chown -R squid:squid /etc/squid && chown -R squid:squid /var/log/squid && chmod -R 775 /var/log/squid && chmod 755 /sbin/entrypoint.sh
USER squid
EXPOSE 3128
ENTRYPOINT ["/sbin/entrypoint.sh"]

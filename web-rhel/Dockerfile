FROM dockerreg.magenta.dk/obvius/obvius-rhel:latest

USER root

RUN yum install -y mc nano

COPY full_import_json.pl /full_import_json.pl

# Copy configuration for apache modules
COPY apache_modules.d/* /opt/rh/httpd24/root/etc/httpd/conf.modules.d/

# Copy defaults for various configuration files
COPY conf_files/* /var/conf_files/

RUN /bin/bash /var/conf_files/setup_config_files.sh && \
    chmod +x /var/conf_files/entrypoint.sh

RUN chown -R default /var/www/www.ku.dk/local

USER default

ENTRYPOINT ["/var/conf_files/entrypoint.sh"]

CMD ["/opt/rh/httpd24/root/sbin/httpd", "-D", "NO_SMALL_APACHES", "-D", "FOREGROUND"]

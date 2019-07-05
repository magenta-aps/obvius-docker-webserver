FROM dockerreg.magenta.dk/obvius/obvius-rhel:latest

USER root

RUN yum install -y mc nano

COPY full_import_json.pl /full_import_json.pl

# Copy configuration for apache modules
COPY apache_modules.d/* /opt/rh/httpd24/root/etc/httpd/conf.modules.d/

# Copy defaults for various configuration files
COPY conf_files/* /var/conf_files/

# Add obvius-preload and website configuration to apache
RUN ln -s /var/conf_files/zz-010-obvius.conf \
        /opt/rh/httpd24/root/etc/httpd/conf.d/zz-010-obvius.conf && \
    ln -s /var/conf_files/zz-020-obvius-website.conf \
        /opt/rh/httpd24/root/etc/httpd/conf.d/zz-020-obvius-website.conf

# TODO: Move these to base images:
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Locale::Maketext::Extract
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Catalyst::Plugin::Static::Simple
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Catalyst::Plugin::ConfigLoader
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Catalyst::View::Mason
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Catalyst::Action::RenderView
RUN source /opt/app-root/etc/scl_enable && \
    cpanm HTML::TreeBuilder
RUN source /opt/app-root/etc/scl_enable && \
    cpanm HTML::FormatText
RUN source /opt/app-root/etc/scl_enable && \
    cpanm Spreadsheet::ParseExcel
RUN source /opt/app-root/etc/scl_enable && \
    cpanm URI::Escape

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN sed -i "s/#!\/usr\/bin\/perl/#!\/opt\/rh\/rh-perl526\/root\/usr\/bin\/perl/" "/var/www/www.ku.dk/conf/rewriter.pl"

USER default

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/opt/rh/httpd24/root/sbin/httpd", "-D", "FOREGROUND"]

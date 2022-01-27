FROM httpd:2.4

RUN sed -i \
        -e 's/^#\(LoadModule .*mod_negotiation.so\)/\1/' \
        -e 's/^\(.*\)Options Indexes FollowSymLinks/\1Options -Indexes +FollowSymLinks +MultiViews/' \
        conf/httpd.conf

FROM postgres:13.2
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/13.2/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/13.2/main/postgresql.conf
CMD ["/usr/lib/postgresql/13.2/bin/postgres", "-D", "/var/lib/postgresql/13.2/main", "-c", "config_file=/etc/postgresql/13.2/main/postgresql.conf"]

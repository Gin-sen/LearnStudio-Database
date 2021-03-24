FROM postgres:13.2
RUN ["/bin/bash", "-c", "echo \"host all  all    0.0.0.0/0  md5\" >> /etc/postgresql/pg_hba.conf"]
RUN ["/bin/bash", "-c", "echo \"listen_addresses='*'\" >> /etc/postgresql/postgresql.conf"]
CMD ["postgres", "-D", "/var/lib/postgresql/data", "-c", "config_file=/etc/postgresql/postgresql.conf"]
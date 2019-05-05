FROM mysql:latest as builder

# That file does the DB initialization but also runs mysql daemon, by removing the last line it will only init
RUN ["sed", "-i", "s/exec \"$@\"/echo \"not running $@\"/", "/usr/local/bin/docker-entrypoint.sh"]

# needed for intialization
ENV MYSQL_ROOT_PASSWORD=rootA
ENV MYSQL_USER="sql2289841"
ENV MYSQL_PASSWORD='aU4!kQ4*'

COPY setup.sql /docker-entrypoint-initdb.d/
#RUN mysqld --default-authentication-plugin=mysql_native_password
# Need to change the datadir to something else that /var/lib/mysql because the parent docker file defines it as a volume.
# https://docs.docker.com/engine/reference/builder/#volume :
#       Changing the volume from within the Dockerfile: If any build steps change the data within the volume after
#       it has been declared, those changes will be discarded.
RUN ["/usr/local/bin/docker-entrypoint.sh", "mysqld", "--datadir" , "/initialized-db","--default-authentication-plugin=mysql_native_password"]

FROM mysql:latest

COPY --from=builder /initialized-db /var/lib/mysql

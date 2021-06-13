FROM mongo:4.0.22

COPY ./script_db/ /docker-entrypoint-initdb.d/


# RUN apt-get update \
#     && apt-get install -y git build-essential
#
FROM apache/superset

ENV SUPERSET_SECRET_KEY="WAmLa67nRU5ks2jK7Cfb+PSJ6kJtxB62u9NGUQKEKqfRA7e3JEnO1hok"

RUN superset fab create-admin --username admin --firstname Superset --lastname Admin --email admin@superset.com --password admin \
    && superset db upgrade \
    && superset load_examples \
    && superset init

# CMD superset run -p 8088 --with-threads --reload --debugger
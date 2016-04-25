FROM pablodelpino/dockedere:final
MAINTAINER Pablo del Pino <pablo.delpino@yuxipacific.com>

# Expose MarkLogic Server ports - add additional ones for your REST, etc
# endpoints
EXPOSE 80 7997 7998 7999 8000 8001 8002 8040 8041 8042 8990 9040 9041 9070 9071

# Define default command (which avoids immediate shutdown)
CMD /opt/MarkLogic/bin/MarkLogic && tail -f /dev/null

# docker run -d --name=dockedere_v3 -p 80:80 -p 7997:7997 -p 7998:7998 -p 7999:7999 -p 8000:8000 -p 8001:8001 -p 8002:8002
# -p 8040:8040 -p 8041:8041 -p 8042:8042 -p 8990:8990 -p 9040:9040 -p 9041:9041 -p 9070:9070 -p 9071:9071 dockedere:v3

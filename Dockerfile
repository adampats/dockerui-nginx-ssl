FROM nginx:latest

ENV CERT_PATH /etc/nginx/conf.d

COPY dockerui.conf /etc/nginx/conf.d/default.conf
COPY dockerui.htpasswd /etc/nginx/dockerui.htpasswd

# Generate self-signed cert + private key on the fly
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout $CERT_PATH/dockerui.key \
    -out $CERT_PATH/dockerui.crt \
    -subj '/CN=localhost/O=Foo/C=US'

# Or use your own certificates
#COPY dockerui.crt /etc/nginx/conf.d/dockerui.crt
#COPY dockerui.key /etc/nginx/conf.d/dockerui.key

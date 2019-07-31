FROM openresty/openresty:alpine

COPY nginx.conf         /usr/local/openresty/nginx/conf/
COPY default.conf	/etc/nginx/conf.d/
COPY index.html		/usr/share/nginx/html/
COPY *.vhost            /usr/local/openresty/nginx/conf/
COPY lib/prometheus.lua /usr/local/openresty/luajit/lib

RUN nginx -t

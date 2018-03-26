FROM kong:0.11.2
LABEL maintainer "Kuari <kuari@justmylife.cc>"
RUN luarocks install kong-plugin-cookies-to-headers
CMD ["/usr/local/openresty/nginx/sbin/nginx", "-c", "/usr/local/kong/nginx.conf", "-p", "/usr/local/kong/"]

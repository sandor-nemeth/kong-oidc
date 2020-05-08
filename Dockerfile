FROM kong:2.0.3-alpine

USER root
RUN apk update && apk add git unzip luarocks
RUN luarocks install kong-oidc

ENV KONG_PUGINS default,oidc

USER kong

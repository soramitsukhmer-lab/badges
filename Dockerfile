ARG CADDY_VERSION
FROM caddy:${CADDY_VERSION}-alpine
ADD rootfs /

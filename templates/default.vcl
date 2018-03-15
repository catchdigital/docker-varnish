vcl 4.0;

# Default backend definition. Points to Apache, normally.
backend default {
    .host = "apache";
    .port = "8080";
    .first_byte_timeout     = 300s;   # How long to wait before we receive a first byte from our backend?
    .connect_timeout        = 5s;     # How long to wait for a backend connection?
    .between_bytes_timeout  = 2s;     # How long to wait between bytes received from our backend?
}

include "custom.vcl";

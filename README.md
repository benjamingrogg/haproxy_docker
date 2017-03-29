HA-Proxy Docker Image
=====================

Not for public use (yet).

Contains HA-Proxy 1.6.9

Based on Alpine 3.5 Linux to keep the footprint small as possible.


Build
-----

`sudo docker build -t benjamingrogg/alpine-haproxy .`

Run
---

You can edit the haproxy.cfg file (It will be copied inside the Container during Build)

`$ sudo docker run -ti -d -p 443:443 benjamingrogg/alpine-haproxy`

Or Map the File on every run :

`$ sudo docker run -ti -d -p 443:443 -v $PWD/haproxy.cfg:/etc/haproxy/haproxy.cfg benjamingrogg/alpine-haproxy`

Please note : Don't use the deamon keyword in the Global Section.

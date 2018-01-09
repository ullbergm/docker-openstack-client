FROM python:alpine as builder

RUN apk add --update --no-cache git build-base linux-headers libffi-dev openssl-dev
RUN git clone --depth 1 https://github.com/openstack/python-openstackclient.git /src
RUN cd /src && pip install --no-cache-dir --root=/app .

FROM python:alpine as latest
COPY --from=builder /app /

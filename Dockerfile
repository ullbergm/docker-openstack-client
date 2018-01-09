FROM python:alpine as builder

#apk add --update --no-cache python py-pip git python-dev libffi libffi-dev openssl openssl-dev build-base iputils bash curl linux-headers
RUN apk add --update --no-cache git build-base linux-headers libffi-dev openssl-dev
RUN git clone --depth 1 https://github.com/openstack/python-openstackclient.git /src
RUN cd /src && pip install --no-cache-dir --root=/app .

#apk del build-base linux-headers python-dev libffi-dev openssl-dev

FROM python:alpine as latest
COPY --from=builder /app /

FROM python:alpine as builder

RUN apk add --update libxml2-dev libxslt-dev gcc musl-dev g++ git
RUN pip install --prefix="/install" fava
run pip install --prefix="/install" git+https://github.com/andreasgerstmayr/fava-dashboards.git

FROM python:alpine

COPY --from=builder /install /usr/local

ENV FAVA_HOST "0.0.0.0"
EXPOSE 5000

WORKDIR /beancount

ENTRYPOINT ["fava","/beancount/data/Haushaltsbuch.bean"]
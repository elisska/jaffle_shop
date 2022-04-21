FROM python:3.9-slim

WORKDIR /app

RUN groupadd -r dbt && useradd --no-log-init -r -g dbt dbt

RUN apt-get update && apt-get install -y git build-essential libsasl2-dev

RUN pip install dbt-postgres==1.0.2 "dbt-spark[PyHive]==1.0.0" 

COPY . .

RUN chown -R dbt:dbt /app

USER dbt:dbt

EXPOSE 8080

ENTRYPOINT ["./run-pipeline.sh"]

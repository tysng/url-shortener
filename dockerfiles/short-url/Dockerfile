FROM bitwalker/alpine-elixir-phoenix:latest


COPY ./../../elx/mix.exs .
COPY ./../../elx/mix.lock .

WORKDIR /home/shorturl/elx

RUN mix do deps.get, deps.compile

CMD mix phx.server

# FROM ubuntu:focal

# RUN apt-get update && \
# 	apt-get install -y python3 python3-pip default-libmysqlclient-dev

# COPY requirements.txt ./

# RUN pip3 install -r requirements.txt

# WORKDIR /home/shorturl/src/


# CMD ["gunicorn", "--error-logfile", "../logs/gunicorn.error.log", "--config", "config.py", "api:app"]

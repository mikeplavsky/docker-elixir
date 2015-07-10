FROM ubuntu:trusty

RUN apt-get -y install wget

RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb
RUN dpkg -i erlang-solutions_1.0_all.deb

RUN apt-get update

RUN apt-get -y install erlang erlang-base-hipe build-essential
RUN apt-get install -y elixir

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

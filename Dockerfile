# FROM ubuntu:14.04.2
FROM centos:6.6

RUN yum -y update && \
    yum -y install \
      curl \
      gcc \
      git\
      make \
      rpm-build \
      ruby \
      ruby-devel \
      rubygems \
      vim \
      wget && \
    gem install fpm

RUN groupadd -g 1000 fpm && useradd -u 1000 -g fpm fpm

USER fpm

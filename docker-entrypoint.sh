#!/bin/sh

if [ ! -d /var/jenkins_home/.ssh ]; then
  mkdir -p /var/jenkins_home/.ssh

  if [ ! -f /var/jenkins_home/.ssh/known_hosts ]; then
    touch /var/jenkins_home/.ssh/known_hosts
  fi
fi

exec $@
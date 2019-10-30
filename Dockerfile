FROM jenkins/jenkins:2.190.2-alpine

USER root
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
RUN /usr/local/bin/install-plugins.sh git build-timeout credentials-binding \
                                      timestamper ws-cleanup ssh-slaves \
                                      workflow-aggregator pipeline-stage-view

USER jenkins
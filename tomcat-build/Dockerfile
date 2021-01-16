FROM debian:buster
RUN apt-get update; apt-get install openjdk-11-jre openjdk-11-jre-headless tomcat9 -y
COPY pwm.tar.gz /home
RUN tar xzf /home/pwm.tar.gz -C /home
RUN mkdir /usr/share/tomcat9/conf && ln -s /etc/tomcat9/server.xml /usr/share/tomcat9/conf/server.xml && ln -s /etc/tomcat9/tomcat-users.xml /usr/share/tomcat9/conf/tomcat-users.xml
COPY pwm-2.0.0-SNAPSHOT.war /usr/share/tomcat9/webapps/pwm.war
#RUN sed -i 's/^JAVA_OPTS/#JAVA_OPTS/g' /etc/default/tomcat9
#RUN echo "JAVA_OPTS=\"-Dpwm.applicationPath='/home/pwm/data'\"" >> /etc/default/tomcat9
CMD PWM_APPLICATIONPATH='/home/pwm/data' /usr/share/tomcat9/bin/catalina.sh run

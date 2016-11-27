FROM dbsurvey/apache

USER root

RUN git clone https://github.com/bdeprez/survey.git .
RUN mv /survey-php /var/www/html/
# RUN mkdir -p /uploadstruct

# RUN cp -r /var/www/html/upload/* /uploadstruct ; \
#	chown -R apache:apache /uploadstruct ; \
#   chmod -R 755 /uploadstruct    

VOLUME /var/www/html/survey/upload

RUN ./fix-permissions /var/www/html/

USER 1001
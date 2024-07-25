FROM ubuntu
LABEL maintainer address "vamshi"
RUN apt update
RUN apt install apache2 -y
RUN mkdir sai
WORKDIR /var/www/html 
COPY ./index.html .
CMD ["apachectl", "-D","FOREGROUND"]
EXPOSE 80 

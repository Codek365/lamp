FROM tutum/lamp:latest

RUN apt-get update
RUN apt-get install php5-curl php5-gd -y

RUN cd /app
RUN git clone https://github.com/opencart/opencart.git 

# Add volumes for MySQL 
VOLUME  ["/app" ]

EXPOSE 80 3306
CMD ["/run.sh"]
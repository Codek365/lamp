FROM tutum/lamp:latest

RUN apt-get update && install php5-curl php5-gd -y

# Add volumes for MySQL 
VOLUME  ["/app" ]

#RUN cd /app
#RUN git clone https://github.com/opencart/opencart.git
#RUN mv -v /app/opencart/upload/* /app

EXPOSE 80 3306
CMD ["/run.sh"]
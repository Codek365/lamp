FROM mattrayner/lamp:latest-1604

# Your custom commands

CMD ["/run.sh"]
#RUN apt-get update
#RUN apt-get install php5-curl php5-gd -y

# Add volumes for MySQL 
#VOLUME  ["/app" ]

RUN git clone https://github.com/opencart/opencart.git 
RUN cp -r -v /opencart/upload /app



EXPOSE 80 3306
CMD ["/run.sh"]
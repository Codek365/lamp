FROM tutum/lamp:latest

# Add volumes for MySQL 
VOLUME  ["/etc/mysql", "/var/lib/mysql","/app" ]
RUN cd /app
RUN git clone https://github.com/opencart/opencart.git
RUN mv opencart/upload/*
EXPOSE 80 3306
CMD ["/run.sh"]
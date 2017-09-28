FROM tutum/lamp:latest

# Add volumes for MySQL 
VOLUME  ["/etc/mysql", "/var/lib/mysql","/app" ]

RUN cd /app
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts
RUN git clone https://github.com/opencart/opencart.git /app
RUN mkdir -p /app && rm -fr /var/www/html && ln -s /app /var/www/html

EXPOSE 80 3306
CMD ["/run.sh"]
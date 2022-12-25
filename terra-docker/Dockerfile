FROM amazonlinux:latest

# Install dependencies
RUN yum update -y && \
    yum install -y httpd && \
    yum search wget && \
    yum install wget -y && \
    yum install unzip -yum

# change firectory
RUN cd /var/www/html

# download webfiles
RUN wget https://github.com/alexdevops007/terra-docker/archive/refs/heads/main.zip

# unzip folder
RUN unzip main.zip

# copy files into html directory
RUN cp -r terra-docker-main/* /var/www/html/

# remove unwanted folder
RUN rm -rf terra-docker-main main.zip

# expose port 80 on the container
EXPOSE 80

# set the default application that will start when then container start 
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
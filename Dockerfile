# this first step pulls a docker image already made officially by NGINX 
# they built it using alpine, a very minimal, stripped down but fully
# functional linux distribution. 
FROM nginx:1.21.6-alpine

# port exposed within the internal network created by docker. 
# it is not accessible outside docker. needs to be 'published' when running
# the container.
EXPOSE 80

# copying the custom html into the default 'index.html' location 
# for nginx to display it
COPY ./index.html /usr/share/nginx/html/index.html


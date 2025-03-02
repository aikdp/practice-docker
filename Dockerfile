FROM nginx
RUN rm -rf /usr.share/nginx/html/index.html
RUN echo "<h1>Hi I am praactice Nginx with DOCKER</h1>" > /usr/share/nginx/html/index.html
CMD ["node", "index.html"]

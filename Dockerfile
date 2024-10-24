FROM nginx:alpine
RUN rm /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/
EXPOSE 90
CMD ["nginx", "-g", "daemon off;"]

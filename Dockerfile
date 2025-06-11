FROM nginx:alpine

COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV BACKGROUND_COLOR=#f5f5f5
ENV ENVIRONMENT=development

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
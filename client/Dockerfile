FROM node:carbon

COPY ./docker/entrypoint.sh /entrypoint/

RUN [ "chmod", "+x", "/entrypoint/entrypoint.sh" ]

WORKDIR /data/

EXPOSE 8080

ENV API_URL=http://localhost:5020/

ENTRYPOINT ["/entrypoint/entrypoint.sh"]

CMD [ "npm", "start" ]

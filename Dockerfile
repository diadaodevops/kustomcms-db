FROM node:14.18.2-bullseye-slim
ENV PORT="8080"
ENV HOST="0.0.0.0"

WORKDIR /app

ENV NODE_OPTIONS=--max_old_space_size=8192 --arch=x64 --platform=linux
ENV NODE_ENV="production"

ADD . /app

EXPOSE 8080
RUN docker
CMD mongo
FROM node:18 as builder
RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN yarn
RUN yarn build

FROM node:16
EXPOSE 3000
WORKDIR /app
COPY --from=builder /app /app
ENV HOST 0.0.0.0
CMD [ "yarn", "start" ]
FROM node:12-alpine AS base

# build

FROM base AS build

WORKDIR /app
COPY . /app
RUN yarn
RUN yarn build

# prune

FROM base AS prod

WORKDIR /app
COPY --from=build /app/dist /app/dist
COPY package.json /app
COPY yarn.lock /app
ENV NODE_ENV production
RUN yarn
EXPOSE 5000
CMD node dist/index.js

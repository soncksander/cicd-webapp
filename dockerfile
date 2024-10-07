FROM node:20

WORKDIR /app

COPY   webapp ./

COPY . .

# RUN yarn install --frozen-lockfile
RUN ["yarn", "install", "--frozen-lockfile"]

EXPOSE 3000

CMD ["yarn", "start"]
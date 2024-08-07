
FROM node:20

RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean

#RUN npm install -g yarn
RUN npm config set cache /app/.npm-cache --global

WORKDIR /app

COPY package*.json ./

RUN npm install
RUN npm install gh-pages --save-dev
#RUN yarn install

COPY . .

#EXPOSE 5170-5179

# 啟動 Vite 開發伺服器
#CMD ["npm", "run", "dev"]
CMD ["npm", "run", "dev", "--", "--host"]
#CMD ["yarn", "dev"]

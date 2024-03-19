FROM node:21-alpine
RUN apk add --no-cache python3 make gcc g++
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "run","dev"]
EXPOSE 3000
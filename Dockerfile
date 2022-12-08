FROM node
WORKDIR /app
EXPOSE 3000
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]
FROM nginx
WORKDIR /todo
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build --prod
COPY /dist/todo /usr/share/nginx/html
CMD ["ng", "deploy" ]

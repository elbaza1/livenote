FROM alpine:3.4

# Update
RUN apk add --update nodejs

# Install app dependencies
ADD .
RUN npm install

# Bundle app source
# COPY . /

EXPOSE  9090
CMD ["node", "app.js"]

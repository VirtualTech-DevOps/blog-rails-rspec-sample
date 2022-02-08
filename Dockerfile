FROM ruby:3.1

RUN apt update -y

WORKDIR /app
COPY ./src/ /app

# Node.jsインストール
RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    rm nodesource_setup.sh && \
    apt install -y nodejs && \
    node -v && \
    npm -v && \
    npm install -g yarn && \
    yarn -v

RUN bundle install
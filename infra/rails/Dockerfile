FROM ruby:3.1

RUN apt update -y

# Node.jsインストール
RUN curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    rm nodesource_setup.sh && \
    apt install -y nodejs && \
    node -v && \
    npm -v && \
    npm install -g yarn && \
    yarn -v

RUN gem install rails && \
    rails -v

WORKDIR /app
COPY src/ /app

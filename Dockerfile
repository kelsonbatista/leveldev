# biblioteca de imagens do docker - https://hub.docker.com/
# posso por ex coloca uma imagem minha - meu.registro.example.org/locaweb_ruby:3.2

FROM ruby:3.0

WORKDIR ./docker

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY config.ru ./

CMD ["bundle", "exec", "puma"]

# depois montar o docker
# comando: docker build -t hello-world-puma .   <--- com um ponto no final que informa onde esta o Dockerfile
# com a imagem pronta, rodar o container: docker run -i -p 4000:9292 --name running-puma hello-world-puma

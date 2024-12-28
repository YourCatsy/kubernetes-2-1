# Используем образ с Ruby
FROM ruby:3.3.1

# Устанавливаем зависимости
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . .

# Устанавливаем зависимости Bundler
RUN gem install bundler && bundle install

# Собираем ассеты (если используются)
RUN bundle exec rake assets:precompile

# Добавляем миграции базы данных
RUN bundle exec rake db:migrate

# Открываем порт
EXPOSE 3000

# Запускаем сервер
CMD ["rails", "server", "-b", "0.0.0.0"]

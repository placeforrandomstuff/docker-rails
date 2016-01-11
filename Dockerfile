FROM everwise/rails

WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install
ADD ./ /var/www/myapp

EXPOSE 3000

ADD start_server.sh /usr/bin/start_server.sh

ENTRYPOINT /usr/bin/start_server.sh

#!/bin/bash

# ２回目以降はコメントアウト(最初だけ外す)
# bundle exec rails db:create RAILS_ENV=production
# bundle exec rails db:migrate RAILS_ENV=production

sudo service nginx start
cd /app
bin/setup
bundle exec pumactl start
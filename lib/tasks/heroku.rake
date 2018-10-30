# frozen_string_literal: true

namespace :heroku do
  desc 'Run app in Heroku local development mode'
  task local: :environment do
    `heroku local web --procfile=Procfile.local --env=development`
  end
end

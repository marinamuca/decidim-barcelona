source "https://rubygems.org"

DECIDIM_MAIN_BRANCH = "active_storage_migrations_service"

DECIDIM_VERSION = { git: "https://github.com/decidim/decidim", branch: DECIDIM_MAIN_BRANCH }.freeze

ruby RUBY_VERSION

gem "decidim", DECIDIM_VERSION
gem "decidim-census_sms", path: "decidim-census_sms"
gem "decidim-dataviz", path: "decidim-dataviz"
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-sortitions", DECIDIM_VERSION
gem "decidim-stats", path: "decidim-stats"
gem "decidim-valid_auth", path: "decidim-valid_auth"
gem "decidim-ephemeral_participation", path: "decidim-ephemeral_participation"
gem "decidim-navigation_maps", { git: "https://github.com/AjuntamentdeBarcelona/decidim-module-navigation_maps", branch: "feature/active_storage-migration" }
gem "decidim-term_customizer", { git: "https://github.com/AjuntamentdeBarcelona/decidim-module-term_customizer", branch: "feature/webpacker-migration" }

gem "webpacker", "6.0.0.beta.7"

gem "virtus-multiparams"
gem "wicked_pdf", "~> 2.1"
gem "wkhtmltopdf-binary"
gem "geocoder", "~> 1.6.1"

gem "lograge"
gem "deface"
gem "progressbar"
gem "puma"
gem "origami"

# Needed to be able to debug Puma status
gem "barnes"

# Used to restart puma workers every 6h and free memory
gem "puma_worker_killer"

# Let's kill long-running requests after the Heroku router has responded to.
# https://devcenter.heroku.com/articles/h12-request-timeout-in-ruby-mri#rack-timeout
gem "rack-timeout"

group :development, :test do
  gem 'faker', '2.14.0'
  gem 'byebug', platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "bootsnap"
  gem 'dotenv-rails'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'spring-commands-rspec'
  gem "rubocop", "~> 0.92.0"
  gem "letter_opener_web"
end

group :production do
  gem "aws-sdk-s3", require: false
  gem "sidekiq"
  gem "rails_12factor"
  gem "fog-aws"
  gem "dalli"
  gem "sentry-ruby"
  gem "sentry-rails"
  gem "sentry-sidekiq"
  gem 'rack-ssl-enforcer'
  gem 'rails_autoscale_agent'
  gem "rack_password"
  gem "scout_apm"
end

group :test do
  gem "rspec-rails", "~> 4.0"
  gem "database_cleaner"
end

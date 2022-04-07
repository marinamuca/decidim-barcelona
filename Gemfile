# frozen_string_literal: true

source "https://rubygems.org"

# DECIDIM_MAIN_BRANCH = "release/0.24-stable-bcn"

# DECIDIM_VERSION = { git: "https://github.com/AjuntamentdeBarcelona/decidim", branch: DECIDIM_MAIN_BRANCH }.freeze

DECIDIM_VERSION = { git: "https://github.com/decidim/decidim", branch: "release/0.26-stable" }.freeze
ruby RUBY_VERSION

gem "decidim", DECIDIM_VERSION
gem "decidim-census_sms", path: "decidim-census_sms"
gem "decidim-dataviz", path: "decidim-dataviz"
gem "decidim-ephemeral_participation", path: "decidim-ephemeral_participation"
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-navigation_maps", "~> 1.3.3"
gem "decidim-sortitions", DECIDIM_VERSION
gem "decidim-stats", path: "decidim-stats"
gem "decidim-valid_auth", path: "decidim-valid_auth"

# Change term_customizer dependency to ruby-gems' when term-customizer is compatible with DECIDIM_VERSION
gem "decidim-term_customizer", git: "https://github.com/mainio/decidim-module-term_customizer", branch: "develop"

gem "virtus-multiparams"
gem "wicked_pdf"
gem "wkhtmltopdf-binary"

gem "deface"
gem "lograge"
gem "origami"
gem "progressbar"
gem "puma"
gem "uglifier"

# Needed to be able to debug Puma status
gem "barnes"

group :development, :test do
  gem "bootsnap"
  gem "byebug", platform: :mri
  gem "decidim-dev", DECIDIM_VERSION
  gem "dotenv-rails"
  gem "faker", "~> 2.14"
  gem "rubocop-faker"
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "rubocop", "~> 0.92.0"
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen"
end

group :production do
  # Used to restart puma workers every 6h and free memory
  gem "puma_worker_killer"
  # Let's kill long-running requests after the Heroku router has responded to.
  # https://devcenter.heroku.com/articles/h12-request-timeout-in-ruby-mri#rack-timeout
  gem "dalli"
  gem "fog-aws"
  gem "rack_password"
  gem "rack-ssl-enforcer"
  gem "rack-timeout"
  gem "rails_12factor"
  gem "rails_autoscale_agent"
  gem "scout_apm"
  gem "sentry-rails"
  gem "sentry-ruby"
  gem "sentry-sidekiq"
  gem "sidekiq"
end

group :test do
  gem "database_cleaner"
  gem "rspec"
end

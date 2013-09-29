source 'https://rubygems.org'
gemspec

rails_version = ENV["RAILS_VERSION"] || "default"

version = case rails_version
when "master"
  {github: "rails/rails"}
when "default"
  ">= 3.2"
else
  "~> #{rails_version}"
end

gem "rails", version
gem 'haml'
gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
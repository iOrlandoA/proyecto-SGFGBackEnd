require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Lenguajes1
  class Application < Rails::Application

    config.load_defaults 7.0

    config.middleware.insert_before 0, Rack::Cors do
      allow do
      origins '*'
      resource '*', headers: :any, methods: :any
      end
    end


  end
end

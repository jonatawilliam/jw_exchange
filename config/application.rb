require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module JWExchange
  class Application < Rails::Application
    config.load_defaults 5.2
    config.i18n.available_locales = [:en, :es, 'pt-BR']
    config.i18n.default_locale = :en
  end
end

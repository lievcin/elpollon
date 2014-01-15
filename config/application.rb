require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Elpollon
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.i18n.enforce_available_locales = false

    config.action_dispatch.default_headers[:'X-Frame-Options'] = "ALLOW-FROM https://apps.facebook.com"

    require "#{config.root}/lib/ext/hash"

    $fb_config      = YAML.load_file("#{config.root}/config/facebook.yml")[Rails.env]
    $fb_app_id      = $fb_config['app_id']
    $fb_secret      = $fb_config['secret_key']
    $fb_app_url     = $fb_config['app_url'] # https://www.varagesale.com
    $fb_url         = $fb_config['fb_url']  # https://apps.facebook.com/varagesale
    $fb_channel_url = $fb_config['channel_url']

    # Make Facebook signed_request POSTs behave more RESTfully
    config.middleware.use Rack::Facebook::SignedRequest, app_id: $fb_app_id, secret: $fb_secret, inject_facebook: false
  end
end

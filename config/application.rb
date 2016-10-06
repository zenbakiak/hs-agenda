require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module HsAgenda
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :rspec, fixture: true
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.routing_specs false
      g.request_specs false
      g.view_specs false
      g.helper_specs false
      g.stylesheets false
      g.javascripts false
      g.helper true
    end

    config.active_record.raise_in_transactional_callbacks = true
  end
end

require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Instagram
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g| # Add from here(3 lines)
      g.assets false          # CSS, JavaScript file is not created automatically
      g.helper     false      # helper file is not created automatically
      g.test_framework :rspec, # Add from here (5 lines)
      fixtures: false, # Skip the creation of fixtures that create records in the test DB (to use FactoryBot)
      view_specs: false, # Do not create specs for view files
      helper_specs: false, # Do not create specs for helper files
      routing_specs: false # Do not create a spec file for routes.rb
    end
  end
end

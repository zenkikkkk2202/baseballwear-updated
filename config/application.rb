require_relative 'boot'

require 'rails/all'
require "devise"
#デフォルトでOFFになっているauto_loadをON
config.enable_dependency_loading = true

#auto_loadはrails4までは使える
config.autoload_paths += Dir["#{config.root}/lib/**/"]

#eager_load設定
#config.paths.add 'lib', eager_load: true    
#config.eager_load_paths += Dir["#{config.root}/lib/**/"]

config.active_record.raise_in_transactional_callbacks = true
#JS関連
config.assets.initialize_on_precompile = false
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Baseballwear
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.time_zone = 'Tokyo'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

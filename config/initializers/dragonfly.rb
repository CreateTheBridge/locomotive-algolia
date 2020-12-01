require 'dragonfly'

# Configure
Dragonfly.app(:engine).configure do
  plugin :imagemagick,
    convert_command:  `which convert`.strip.presence || '/usr/local/bin/convert',
    identify_command: `which identify`.strip.presence || '/usr/local/bin/identify'

  processor :thumb, Locomotive::Dragonfly::Processors::SmartThumb.new

  verify_urls true

  secret '7ed9eb4590a0055bbc931ef9c28a277d1c44fe0a00fdd9fc2c75bf4b81bea5b7'

  url_format '/images/dynamic/:job/:sha/:basename.:ext'

  fetch_file_whitelist /public/

  fetch_url_whitelist /.+/
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware, :engine

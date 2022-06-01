# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Rails.application.config.hosts << nil
Rails.application.configure do
    config.hosts << "cyan-pens-enter-192-38-90-52.loca.lt"
end

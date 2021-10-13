# frozen_string_literal: true

module Typeform
  # Defines constants and methods related to configuration.
  module Configuration
    # An array of valid keys in the options hash when configuring a Typeform::Client.
    OPTION_KEYS = [:typeform_token, :timeout, :debug]

    # The user agent that will be sent to the API endpoint if none is set.
    DEFAULT_USER_AGENT = "Typeform Ruby Client Gem #{Typeform::VERSION}"

    # Base URI for the Typeform API.
    DEFAULT_API_BASE_URI = "https://api.typeform.com/"

    attr_accessor(*OPTION_KEYS)

    # Convenience method to allow configuration options to be set in a block.
    def configure
      yield(self)
    end

    # Creates a hash of options and their values.
    def options
      options = {}
      OPTION_KEYS.each { |key| options[key] = send(key) }
      options
    end
  end
end

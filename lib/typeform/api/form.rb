# frozen_string_literal: true

module Typeform # :nodoc:
  module Api
    # users
    class Form < Client
      class << self
        # retrieve forms
        def retrieve_forms(page_size: 200)
          parse(JSON.parse(connection.get("forms?page_size=#{page_size}").body))
        end

        # retrieve a form by a form_id
        def retrieve_form(form_id)
          parse(JSON.parse(connection.get("forms/#{form_id}").body))
        end
      end
    end
  end
end

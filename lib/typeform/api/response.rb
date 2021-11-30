# frozen_string_literal: true

module Typeform # :nodoc:
  module Api
    # users
    class Response < Client
      class << self
        # retrieve reponses by a form_id
        def retrieve_responses(form_id, page_size: 1000)
          parse(JSON.parse(connection.get("forms/#{form_id}/responses?page_size=#{page_size}").body))
        end
      end
    end
  end
end

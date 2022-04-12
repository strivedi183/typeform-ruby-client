# frozen_string_literal: true

module Typeform # :nodoc:
  module Api
    # users
    class Workspace < Client
      class << self
        # retrieve forms
        def retrieve_workspaces(page_size: 200)
          parse(JSON.parse(connection.get("workspaces?page_size=#{page_size}").body))
        end
      end
    end
  end
end

# frozen_string_literal: true

module Typeform # :nodoc:
  module Api
    # users
    class Form < Client
      class << self
        # retrieve forms
        def retrieve_forms(workspace_id, page_size: 200, template: "Template")
          parse(JSON.parse(connection.get("forms?page_size=#{page_size}&workspace_id=#{workspace_id}&search=#{template}").body))
        end

        # retrieve a form by a form_id
        def retrieve_form(form_id)
          parse(JSON.parse(connection.get("forms/#{form_id}").body))
        end

        def create_form(params)
          res = connection.post("forms", params.to_json)
          return JSON.parse(res.body.force_encoding("UTF-8"))["id"]
        end
      end
    end
  end
end

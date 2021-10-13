# frozen_string_literal: true

require "test_helper"

class ConnectionTest < Minitest::Spec
  it "initilize connection" do
    connection = Typeform::Client.connection
    assert_equal "FujKwgkw5U5uVVjqX9ts15wkgzP9wgZ4zDhuApEbm1xk", connection.instance_variable_get(:@typeform_token)
    assert_equal "https://api.typeform.com/", connection.instance_variable_get(:@api_base_uri)
  end
end

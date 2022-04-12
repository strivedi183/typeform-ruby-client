# frozen_string_literal: true

require "test_helper"

class ConnectionTest < Minitest::Spec
  it "initilize connection" do
    connection = Typeform::Client.connection
    assert_equal "tfp_62Xro3C5DmF2NTCQxj2mgjWPuEsefiDVHwY1zBi3HdaF_ep1x8XubFLtg", connection.instance_variable_get(:@typeform_token)
    assert_equal "https://api.typeform.com/", connection.instance_variable_get(:@api_base_uri)
  end
end

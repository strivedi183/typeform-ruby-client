# frozen_string_literal: true

require "test_helper"

class Typeform::Api::FormTest < Minitest::Spec
  it "retrieve responses" do
    form_id = "roXeua8T"

    VCR.use_cassette("retrieve_responses") do
      response = Typeform::Api::Response.retrieve_responses(form_id)
      assert_equal 11, response.total_items
    end
  end
end

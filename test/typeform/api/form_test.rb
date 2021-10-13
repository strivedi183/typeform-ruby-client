# frozen_string_literal: true

require "test_helper"

class Typeform::Api::FormTest < Minitest::Spec
  it "retrieve forms" do
    VCR.use_cassette("retrieve_forms") do
      response = Typeform::Api::Form.retrieve_forms
      assert_equal 5, response.total_items
    end
  end

  it "retrieve form" do
    form_id = "roXeua8T"

    VCR.use_cassette("retrieve_form") do
      response = Typeform::Api::Form.retrieve_form(form_id)
      assert_equal "roXeua8T", response.id
    end
  end
end

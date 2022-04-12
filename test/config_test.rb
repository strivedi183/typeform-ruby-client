# frozen_string_literal: true

require "test_helper"

class ConfigTest < Minitest::Test
  def test_must_configure_the_gem_with_your_token
    assert_equal "tfp_62Xro3C5DmF2NTCQxj2mgjWPuEsefiDVHwY1zBi3HdaF_ep1x8XubFLtg", Typeform.typeform_token
  end
end

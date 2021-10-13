# frozen_string_literal: true

require "test_helper"

class ConfigTest < Minitest::Test
  def test_must_configure_the_gem_with_your_token
    assert_equal "FujKwgkw5U5uVVjqX9ts15wkgzP9wgZ4zDhuApEbm1xk", Typeform.typeform_token
  end
end

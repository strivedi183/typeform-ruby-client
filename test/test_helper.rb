# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "typeform"

require "simplecov"
SimpleCov.start

require "minitest/autorun"
require "minitest/pride"
require "vcr"

VCR.configure do |c|
  c.cassette_library_dir = "test/cassettes"
  c.hook_into :faraday
end

Typeform.configure do |config|
  config.typeform_token = "tfp_62Xro3C5DmF2NTCQxj2mgjWPuEsefiDVHwY1zBi3HdaF_ep1x8XubFLtg"
  config.timeout = 10
  config.debug = true
end

# frozen_string_literal: true

require "faraday"

require "typeform/version"
require "typeform/core_ext/hash/keys"
require "typeform/configuration"
require "typeform/connection"
require "typeform/client"
require "typeform/error"
require "typeform/objectified_hash"

require "typeform/api/form"
require "typeform/api/response"
require "typeform/api/workspace"

module Typeform
  extend Configuration
end

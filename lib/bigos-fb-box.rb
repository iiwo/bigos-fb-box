require "bigos-fb-box/engine"
require 'koala'

module BigosFbBox

  mattr_accessor :access_token
  @@access_token = nil

  mattr_accessor :page_name
  @@page_name = nil

  module Controllers
    autoload :Helpers, 'bigos-fb-box/controllers/helpers'
  end

  def self.setup
    include_helpers
    yield self
  end

  # Include helpers to AC and AV.
  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
    end

    ActiveSupport.on_load(:action_view) do
      include BigosFbBox::Controllers::Helpers
    end
  end

end

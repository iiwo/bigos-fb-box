require "bigos-fb-box/engine"

module BigosFbBox

  mattr_accessor :fb_key
  @@fb_key = nil

  mattr_accessor :fb_secret
  @@fb_secret=nil

  module Controllers
    autoload :Helpers, 'bigos-fb-box/controllers/helpers'
  end

  def self.setup
    yield self
    include_helpers
  end

  # Include helpers in the given scope to AC and AV.
  def self.include_helpers
    ActiveSupport.on_load(:action_controller) do
      include BigosFbBox::Controllers::Helpers
    end

    ActiveSupport.on_load(:action_view) do
      include BigosFbBox::Controllers::Helpers
    end
  end

end

module BigosFbBox
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a BigosFbBox initializer."
      def copy_initializer
        template "bigos_fb_box.rb", "config/initializers/bigos_fb_box.rb"
      end

    end
  end
end
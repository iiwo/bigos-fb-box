module BigosFbBox
  module Controllers
    # Those helpers are convenience methods added to ApplicationController.
    module Helpers
      extend ActiveSupport::Concern

      def bigos_fb_box_widget
        render :partial=>"bigos_fb_box/module/widget", :locals=>{:facebook_posts=>[]}
      end

    end
  end
end
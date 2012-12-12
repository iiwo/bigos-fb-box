module BigosFbBox
  module Controllers
    # Those helpers are convenience methods added to ApplicationController.
    module Helpers
      extend ActiveSupport::Concern

      def bigos_fb_box_widget
        graph = Koala::Facebook::API.new(BigosFbBox.access_token)
        facebook_posts = graph.get_connections(BigosFbBox.page_name, "feed")

        render :partial=>"bigos_fb_box/module/widget", :locals=>{:facebook_posts=>facebook_posts}
      end

    end
  end
end
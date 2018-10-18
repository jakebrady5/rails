module ActionMailbox
  module Routing
    extend ActiveSupport::Concern

    included do
      cattr_accessor :router, default: ActionMailbox::Router.new
    end

    class_methods do
      def routing(routes)
        router.add_routes(routes)
      end

      def route(inbound_email)
        router.route(inbound_email)
      end
    end
  end
end

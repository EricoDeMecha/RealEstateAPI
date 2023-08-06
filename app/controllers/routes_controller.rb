class RoutesController < ApplicationController
  def index
    @routes = Rails.application.routes.routes
    @route_info = []

    @routes.each do |route|
      info = {
        verb: route.verb,
        path: route.path.spec.to_s,
        defaults: route.defaults,
      }
      @route_info << info
    end
  end
end

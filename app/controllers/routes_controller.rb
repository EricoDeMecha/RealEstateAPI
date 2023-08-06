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
    render json: @route_info, status: :ok # comment this line to render the root page as a web page instead of json
  end
end

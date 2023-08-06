class RoutesController < ApplicationController
  def index
    @routes = Rails.application.routes
  end
end

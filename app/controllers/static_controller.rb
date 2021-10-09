class StaticController < ApplicationController
    before_action :no_render, only: [:index]
  def index
  end

  def no_render
    render :layout => false
  end

end

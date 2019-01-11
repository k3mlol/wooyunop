class SearchController < ApplicationController
  def index
    @q = Bug.ransack(params[:q])
  end

end

class PagesController < ApplicationController
  def index
  end
  def home
    @id = params[:id]
  end

end

class CokieController < ApplicationController
  def index
    @books = Cookie.all

    render json: @cookie
  end
end

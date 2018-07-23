class CookieController < ApplicationController
  def index
    @cookie = Cookie.all

    render json: @cookie
  end
end

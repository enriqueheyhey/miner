class PagesController < ApplicationController
  def index
    @addresses = Address.all
  end
end

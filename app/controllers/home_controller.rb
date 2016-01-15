class HomeController < ApplicationController
  def index
    @currencies = Currency.by_code
  end
end

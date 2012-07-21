class HomeController < ApplicationController
  before_filter :authenticate_company!
  def index
   @company = Company.find(current_company)
  end
end

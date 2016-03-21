class HomeController < ApplicationController
  
  def index

    Make.update_makers

    @makers = Make.all

  end

end

class HomeController < ApplicationController
  
  def index

    Maker.update_makers
    @makers = Maker.order(:name)

  end

end

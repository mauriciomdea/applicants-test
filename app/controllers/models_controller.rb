class ModelsController < ApplicationController
  
  def index

    maker = Make.find_by(webmotors_id: maker_params[:webmotors_maker_id])
    Model.update_models(maker)
    @models = Model.where(make_id: maker.id)

  end

  private

    def maker_params
      params.permit(:webmotors_maker_id)
    end

end

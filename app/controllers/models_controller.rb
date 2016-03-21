class ModelsController < ApplicationController
  
  def index

    maker = Maker.find_by(webmotors_id: maker_params[:webmotors_maker_id])
    Model.update_models(maker)
    @models = maker.models.order(:name)

  end

  private

    def maker_params
      params.permit(:webmotors_maker_id)
    end

end

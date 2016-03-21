class ModelsController < ApplicationController
  
  def index

    # Search the models
    uri = URI("http://www.webmotors.com.br/carro/modelos")

    # Make request for Webmotors site
    maker = Make.where(webmotors_id: params[:webmotors_make_id])[0]

    response = Net::HTTP.post_form(uri, { marca: params[:webmotors_make_id] })
    models_json = JSON.parse response.body

    # Iterates results and creates new models that aren't persisted yet
    models_json.each do |model|
      Model.find_or_create_by(make_id: maker.id, name: model["Nome"])
    end

  @models = Model.where(make_id: maker.id)

  end

end

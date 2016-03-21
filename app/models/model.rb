class Model < ActiveRecord::Base

  belongs_to :maker

  def self.update_models(maker)

    # Look for models at Webmotors site
    uri = URI(ENV['WEBMOTORS_MODELOS_URI'])
    response = Net::HTTP.post_form(uri, { marca: maker.webmotors_id })
    models_json = JSON.parse response.body

    # Iterates results and creates new models that aren't persisted yet
    models_json.each do |model|
      Model.find_or_create_by(maker_id: maker.id, name: model["Nome"])
    end

  end

end

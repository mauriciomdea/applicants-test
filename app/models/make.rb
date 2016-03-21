class Make < ActiveRecord::Base

  def self.update_makers 

    # Look for makers at Webmotors site
    uri = URI(ENV['WEBMOTORS_MARCAS_URI'])
    response = Net::HTTP.post_form(uri, {})
    json = JSON.parse response.body

    # Iterates results and checks if they all exist in the DB and creates new records as needed
    json.each do |maker_params|
      Make.find_or_create_by(name: maker_params["Nome"], webmotors_id: maker_params["Id"])
    end

  end

end

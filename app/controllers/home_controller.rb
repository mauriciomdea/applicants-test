class HomeController < ApplicationController
  
  def index

    # Search the maker
    uri = URI("http://www.webmotors.com.br/carro/marcas")

    # Make request for Webmotors site
    response = Net::HTTP.post_form(uri, {})
    json = JSON.parse response.body

    # Iterates results and checks if they all exist in the DB
    # If they not, create a new record
    json.each do |maker_params|
      Make.find_or_create_by(name: maker_params["Nome"], webmotors_id: maker_params["Id"])
    end

    @makers = Make.all

  end

end

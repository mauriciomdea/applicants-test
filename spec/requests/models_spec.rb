require 'rails_helper'

RSpec.describe "List models", :type => :request do

  it "lists all models from a maker" do

    get "/"
    # assert_select "form"
    post "/models", webmotors_maker_id: "8"
    # assert_select ".h1", :text => "AUDI"

    # TODO: Rails 4.2 changed the way assert_select works

  end

end

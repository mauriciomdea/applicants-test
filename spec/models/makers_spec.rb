require 'rails_helper'

RSpec.describe "Makers" do

  it "creates a new maker" do 
    maker = Maker.new(webmotors_id: 8, name: "AUDI")
    maker.save
    expect(maker.persisted?).to be true
  end

  xit "refuses maker without webmotors_id" do 
    # TODO
  end

  xit "refuses multiple makers with same webmotors_id" do 
    # TODO
  end

end

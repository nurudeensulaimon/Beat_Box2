require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"
require "rspec"
require "pry"

RSpec.describe BeatBox do 
  before :each do
    @bb = BeatBox.new
  end

  describe "initialize" do 
    it "instantiates a new BeatBox object" do 

      expect(@bb).to be_an_instance_of(BeatBox)
      @bb.list
      expect(@bb.list.head).to eq(nil)
    end 
  end 

  describe "it has an append method" do
    it "can append to the node" do 
      
      expect()
end 


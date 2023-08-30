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
      @bb.append("deep doo ditt")

      expect(@bb.list.head.data).to eq("deep")
      expect(@bb.list.head.next_node.data).to eq("doo")
    end
  end 

  describe "it has a method count" do 
    it "can count the number of data in the node" do 
      @bb.append("deep doo ditt")
      @bb.append("woo hoo shu")

      expect(@bb.count).to eq(6)
    end 
  end 

  describe "it has a play method " do 
    it "can play the beats in the beat_box" do
      @bb.append("deep doo ditt")
      @bb.append("woo hoo shu")

      @bb.play
    end
  end
end
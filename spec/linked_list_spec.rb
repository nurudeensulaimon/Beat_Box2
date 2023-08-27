require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do 
  before :each do
    @list = LinkedList.new
  end 

  describe "initialize" do 
    it "instantiates a new LinkedList object" do 

      expect(@list).to be_an_instance_of LinkedList
    end 
  end 

  describe "it has an head" do 
    it "has an head that is nil" do 
  
  expect(@list.head).to eq(nil)
  end 
 end
end 


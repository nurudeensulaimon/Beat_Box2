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

   describe "has a method append" do 
    it "has a method append that adds to head" do 
      @list.append("doop")
     expect(@list.head.data).to eq("doop")
     expect(@list.head.next_node).to eq(nil)
     expect(@list.count).to eq(1)
     expect(@list.to_string).to eq("doop")
    end 
   end 

   describe "it add another data into node" do 
     it "has a method that append additiona method" do 
      expect(@list.head).to eq(nil)
      @list.append("doop")
      expect(@list.head.data).to eq("doop")
      expect(@list.head.next_node).to eq(nil)


      @list.append("deep")
      expect(@list.head.next_node.data).to eq("deep")
      expect(@list.count).to eq(2)
      expect(@list.to_string).to eq("doop deep")
     end 
   end 

   describe "has a method prepend" do 
     it "can add @head to the list" do 
    @list.append("plop")
    @list.append("suu")
    expect(@list.to_string).to eq("plop suu")
    @list.prepend("dop")
    expect(@list.to_string).to eq("dop plop suu")
    expect(@list.count).to eq(3)
   end
   end

  describe "has a method prepend" do 
    it "can add @head to the list" do 
      @list.append("plop")
      @list.append("suu")
      expect(@list.to_string).to eq("plop suu")
      @list.prepend("dop")
      expect(@list.to_string).to eq("dop plop suu")
      expect(@list.count).to eq(3)
      expect(@list.insert(1,"woo"))
      expect(@list.to_string).to eq("dop woo plop suu")

    end 
   end 
end
#    describe "has a #find method" do 
#   it "takes two argumen"
# end 



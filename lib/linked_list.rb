class LinkedList 
attr_reader :head
  def initialize 
    @head = nil
  end 


    def append(data)
      new_node = Node.new(data)
    if @head == nil
      @head = new_node 
    else   
      last_node = @head
    while last_node.next_node != nil 
      last_node = last_node.next_node 
    end 
       last_node.next_node = new_node 
    end 
  end 
end 

         
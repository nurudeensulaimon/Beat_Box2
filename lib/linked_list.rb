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


  def count 
    counter = 0
    last_node = @head 
  while last_node != nil 
    counter += 1 
    last_node = last_node.next_node
  end 
    counter 
  end 
 end 

  def to_string
  current = @head
  elements = []
  until current == nil
      elements << current.data
      current = current.next_node
  end
  elements.join(' ')
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head == nil 
      @head = new_node
    else
      @current_node = new_node
      @current_node.next_node = @head
      @head = @current_node
    end
  end 

def insert(index, data)
  new_node = Node.new(data)
  if index == 0
    new_node.next_node = @head
    @head = new_node
  else 
     current = @head 
     (index -1).times{current = current.next_node}
     new_node.next_node = current.next_node
     current.next_node = new_node
   end 
 end

 def find(starting_index,index_length)
   self.to_string.split[starting_index,index_length].join(" ")
 end 

 def includes?(data)
   self.to_string.include?(data)
 end 
end 
#    def pop
#     #find the last node 
#     # if next_node is nil 
#     # it is the last_node 
#     #find the next_node to the last node 
#     #@next_node to nil
#     #search for key_word until
    
#    end 
# end 
 

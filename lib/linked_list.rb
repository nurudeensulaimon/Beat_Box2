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
    #binding.pry
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

def insert(num, data)
  new_node = Node.new(data)
  if num == 0
    new_node.next_node = @head
    @head = new_node
  else 
     current = @head 
     (num -1).times{current = current.next_node}
     new_node.next_node = current.next_node
     current.next_node = new_node
   end 
 end
end 
 
  
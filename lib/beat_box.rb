class BeatBox 
attr_accessor :list,
               :head
  def initialize 
    @list = LinkedList.new
  end 



def append(data)
  beats = data.split 
  beats.each do |beat|
    new_node = Node.new(beat)
    @list.append(new_node.data)
  end 
 end 

 def count 
  @list.count
 end

 def play
  beats = list.head

  while beats
  beat = beats.data
  `say #{beat}`
  beats = beats.next_node
  end
 end
end 


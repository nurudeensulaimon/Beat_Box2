class BeatBox 
  attr_accessor :list,
                :head
  def initialize 
    @list = LinkedList.new
  end 

  def append(data)
    beats = data.split 
    beats.each do |beat|
      @list.append(beat)
    end 
  end 

  def count 
    @list.count
  end

  def play
    beats = list.head

    while beats
      beat = beats.data
      `say -r 200 -v Cellos #{beat}`

      beats = beats.next_node
    end
  end
end 


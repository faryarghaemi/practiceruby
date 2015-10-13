class SinglyLinkedList
  include Enumerable

  attr_accessor :head 

  def initialize(first_element=nil)
    @head = Node.new(first_element) if first_element
  end

  def prepend(value)
    node = Node.new(value)
    node.next = @head
    @head = node
    self
  end

  def last
    node = @head 
    while node.next 
      node = node.next 
    end
    node  
  end

  def insertAfter(old_node, new_node)
    node = @head
    if node.value == old_node
      node
    else
      while node != old_node && node.next
        node = node.next
      end
    end
    
    first_next = node.next
    node.next = Node.new(new_node)
    node.next.next = first_next
  end

  def append(new_value)
    node = @head 
    while node.next
      node = node.next
    end
    node.next = Node.new(new_value)
  end

  def remove
    node = @head
    @head = node.next
    node.value
  end

  def length
    count = 1
    node = @head 
    while node.next 
      node = node.next
      count += 1
    end
    count
  end 

  def find(needle)
    node = @head
    if node.value == needle
      node 
    else
      node = node.next until node.value == needle
    end
    node
  end 

  def reverse
    new_array = SinglyLinkedList.new
    node = @head
    new_array.prepend(node.value)
    while node.next
      node = node.next
      new_array.prepend(node.value)
    end
    new_array
  end 

  def reverse!
    @head = reverse.head
  end 

  # def [](index)
  # end

  def each
    node = @head 
    while node
      yield node.value
      node = node.next
    end
  end

  # def to_s
  #   self.map { |node| node }.join(', ') 
  # end

  def to_s
    node = @head
    string = "My value is #{node.value}. "
    while node.next
      node = node.next
      string += "My value is #{node.value}. "
    end
    return string
  end

  class Node
    attr_accessor :value, :next

    def initialize(value=nil)
      @value = value
      @next = nil 
    end  
  end 
end


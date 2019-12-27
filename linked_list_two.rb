class LinkedListNode
# Create a class called 'LinkedListNode'
  attr_accessor :value, :next_node
# Utilize 'attr_accessor' to read and write the 'value' and 'next_node' methods
  def initialize(value, next_node=nil)
# Create an 'initialize' method and set it to expect 2 arguments 
# In this case set the second argument 'next_node' to default to 'nil' if no value 
# is given 
    @value = value
# Create an instance variable '@value' and set it equal to the corresponding argument
# in order to accessed outside the method, but within the context of the 'LinkedListNode' class
    @next_node = next_node
# Create an instance variable 'next_node' and set it equal to the corresponding argument 
# in order to accessed outside the method, but within the context of the 'LinkedListNode' class
  end
# End the 'initialize' method
end
# End the 'LinkedListNode' class


  def reverse_list(list, previous=nil)
# Define a 'reverse_list' method and set it to expect 2 arguments
# In this case set the second argument 'previous' to default to 'nil' if no value 
# is given
    if list
# Start a conditional statment stating that if 'list' is present then
      next_node = list.next_node
# Create a variable 'next_node' that will store the value of 'list.next_node'
      list.next_node = previous
# Mutate 'list.next_node' by setting equal to previous instead
      reverse_list(next_node, list)
# Use recursion to instatiate the 'reverse_list' method with the new arguments
    end
# End the condtional statment
  end
# End the 'reverse_list' method

  def print_values(list_node)
# Define a 'print_values' method and set it to expect 1 argument
    if list_node
# Start a conditional statement stating that if 'list_node' is present then
      print "#{list_node.value} --> "
# 'Print' 'list_node.value' (in it's current state) in this fromatted string then
      print_values(list_node.next_node)
# Instatiate the 'print_values' method with the 'next_node' of the current 'list_node' agrgument
    else
# And once list is not present anymore is full then 
      print "nil\n"
# 'Print' 'nil' with a backslash to indent
      return
# Return the final product
    end
# End the conditional statement
  end
# End the 'print_values' method


node1 = LinkedListNode.new(37)
# Create an instance of 'LinkedListNode' and provide 1 argument. Store it in a
# variable called 'node1'
node2 = LinkedListNode.new(99, node1)
# Create an instance of 'LinkedListNode' and provide 2 arguments. Store this in a
# variable called 'node2'
node3 = LinkedListNode.new(12, node2)
# Create an instance of a 'LinkedListNode' and provide 2 arguments, and store it in a
# variable called 'node3'

print_values(node3)
# Instantiate the 'print_values' method with the 'node3' variable

puts "-------"

# 'puts' "--------" to separate the the output of the original 'print_values' product
# and the product of the instantiated methods below

reverse_list(node3)
# Instantiate the 'reverse_list' method with the 'node3' variable

print_values(node1)
# Instantiate the 'print_values' method with 'node1' now that the 'reverse-list' method 
# has mutated the original 'next_node' values 







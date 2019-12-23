
class LinkedListNode
# Create a class called 'LinkedListNode'

  attr_accessor :value, :next_node
# Utilize attr_accessor to read and write the 'value' and 'next_node' methods

  def initialize(value, next_node=nil)
# Define an 'initialize' method and set it to expect 2 arguments
# In this specific case we should set the 'next_node' argument to default to 
# 'nil' if no argument is given in it's respective position
    @value = value
# Create an instance variable '@value' so it can be accessed across all methods 
# within the context of the 'LinkedListNode' class 
    @next_node = next_node
# Create an instance variable 'next_node' so it can be accessed across all methods
# within the context of the 'LinkedListNode' class 
  end
# End the 'initialize' method
end
# End the 'LinkedListNode' class

class Stack
# Create a class called 'Stack'
  attr_reader :data
# Utilize attr_reader to create and only read the 'data' method
  def initialize
# Create an 'initialize' method with no arguments to expect
      @data = nil
# Create an instance variable '@data' and set it default to 'nil'
  end
# End the 'initialize' method

  def push(value)
# Create a 'push' method and set it to expect 1 argument
       @data = LinkedListNode.new(value, @data)
# Set the instance variable '@data' equal to a new instance of the 'LinkedListNode'
# class with the given arguments being a forwarded argument from the push method 'value'
# and recurring the instance variable '@data' 
  end
# End the 'push' method

  def pop
# Define a 'pop' method
      print "nil\n" if @data.nil?
# print 'nil' if the instance variable '@data' is equal to 'nil' at that given 
# point in time 
      print "#{@data.value}\n"
# print 'data.value' otherwise
      @data = @data.next_node
# Set the instance variable to the 'next_node' reference as a recursion 
  end
# End the 'pop' Method
end
# End the 'Stack' class

  def reverse_list(list)
# Define a method called 'reverse_list' and set it to expect 1 argument
    stack = Stack.new
# Create a variable called 'stack' and set it equal to 'Stack.new' which will create a new 'Stack' object
    while list
# Start a 'while' loop that states while the argument 'list' is present execute the following actions
      stack.push(list.value)
# Call the 'push' method within the 'stack' class and instantiate the method with 'list.value' as the 
# given argument. ('list.value' in this case is 12)
      list = list.next_node
# Reference the next_node in the 'list' argument 
    end
# End the while loop
    return stack.data
# Return the instantiated 'data' method within the 'Stack' class
  end
# End the 'reverse_list' method

  def print_values(list_node)
# Define a 'print_values' method and set it to expect 1 argument ('list_node')
    if list_node
# Start a conditional statement stating that if 'list_node' is present; execute
# the following actions
      print "#{list_node.value} --> "
# Locate the 'value' of 'list_node' and print it within a string
# Utilize the print action specifically so the output won't have a space after each iteration
      print_values(list_node.next_node)
# Instantiate the 'print_values' method within itself which will invoke recursion
# Provide 'list_node.next_node' as the argument value so that the current node's, 
# reference to the next node, will now be instatiated 
    else
# This 'else' says that if 'next_node' is not present at the end of the recursion loop
      print "nil\n"
# then print "nil" 
# Add '\n' in the string to create a new line for legibilty 
      return
# Return 
    end
# End the condtional statment now the 'nil' has printed
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

# 'puts' "--------" to separate the the output of 'print_values'
# with 'node3' provided as an argument from 'print_values' as 'revlist'
# as an argument

revlist = reverse_list(node3)
# Instantiate the 'reverse_list' method, providing 'node3' as an argument 
# and store this in a variable called revlist 

print_values(revlist)
# Instantiate the 'print_values' method with the 'revlist' variable 
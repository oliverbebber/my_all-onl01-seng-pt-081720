# iterate thru each element in arguement = collection, using while
# counter = i
# increment it each time we go into a loop; i = i + 1
# yield each element in collection to the block
#
#
# return of a .map block is the new array

require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end

  if block_return_values.include?(false)
    false
  else
    true
  end
end

#def my_all?(collection)
#  i = 0
#  while i < collection.length
#    yield(collection[i])
#    i += 1 <-- same as i = i + 1
#  end
#end

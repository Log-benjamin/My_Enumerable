require_relative 'my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 })
# => true
# puts(list.all? { |e| e > 5 })
# => false

# puts(list.any? { |e| e == 2  })
# => true
# puts(list.any? { |e| e == 5 })
# => false

# puts(list.filter { |e| e.even? })
# => [2, 4]

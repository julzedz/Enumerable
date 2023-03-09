require './my_enumerable'

class MyList
  include MyEnumerable

  attr_reader :list

  def initialize(*list)
    @list = list 
  end

  def each
    yield @list
  end
end


list = MyList.new(1, 2, 3, 4)

list.all? {|e| e < 5}
list.any? {|e| e == 2}
list.filter? {|e| e.even?}

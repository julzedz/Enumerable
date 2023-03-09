module MyEnumerable
  def all?
    nums = []
    list.each { |num| nums.push(num) if yield num }
    p nums.length == list.length
  end

  def any?
    nums = []
    list.each { |num| nums.push(num) if yield num }
    p !list.empty?
  end

  def filter?
    nums = []
    list.each { |num| nums.push(num) if yield num }
    p nums
  end
end

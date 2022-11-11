module MyEnum
  def all?
    check = true
    each do |item|
      check = false unless yield(item)
    end
    check
  end

  def any?
    check = false
    each do |item|
      check = true if yield(item)
    end
    check
  end

  def filter
    filtered = []
    each do |item|
      filtered << item if yield(item)
    end
    filtered
  end
end

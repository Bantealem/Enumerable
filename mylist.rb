require_relative 'own_enumerable'

class MyList
  include MyEnum
  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4, 5)
p(list.all?(&:positive?))
p(list.all? { |item| item > 1 })
p(list.any?(&:positive?))
p(list.any? { |item| item > 1 })
p(list.filter { |item| item > 1 })
p(list.filter { |item| item > 2 })

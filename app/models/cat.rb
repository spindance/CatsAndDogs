class Cat

  attr_reader :name

  def initialize(id)
    @id = id
    @name = 'Garfield'
  end

  def user_id
    @id
  end

end

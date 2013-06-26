class User

  attr_reader :id

  def initialize(id)
    @id = id
  end

  def role_symbols
    [:user]
  end

end

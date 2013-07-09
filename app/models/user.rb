class User

  attr_reader :id

  def initialize(id)
    @id = id
  end

  def role_symbols
    roles = [:user]
    if @id.eql?(2)
      roles = [:administrator]
    end
    roles
  end

end

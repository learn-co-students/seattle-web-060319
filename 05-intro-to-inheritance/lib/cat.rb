class Cat
  attr_reader :name, :num_lives
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = 'nervous'
    @num_lives = 9
  end
end
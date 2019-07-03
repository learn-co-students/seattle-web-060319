class Cat < Pet
  puts "Parsing Cat class"
  attr_reader :num_lives
  attr_accessor :name

  def initialize(name)
    # now additionally do our own cat stuff
    puts "Initializing a Cat #{name}"
    @num_lives = 9

    # manually invoke this method
    # in the parent class
    super
  end

end

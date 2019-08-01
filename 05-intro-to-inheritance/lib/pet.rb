class Pet
    puts "Parsing Pet class"
    attr_reader :name
    attr_accessor :mood
  
    def initialize(name)
      puts "Initializing a Pet #{name}"
      @name = name
      @mood = 'nervous'
    end
end
class Performance
  attr_reader :theater, :musical, :date
  #date - string
  #musical - objects
  #theater - objects
  @@all = []
  def initialize(date,musical, theater)
    @date = date
    @theater = theater
    @musical = musical
    @@all << self
  end

  def self.all
    @@all
  end

  def hometown_setting?
    @theater.city == @musical.setting_city
  end

  def stats
    date = "Testing 1"
    "The show #{musical.name} was performed in #{theater.city} on #{date}."
  end

end

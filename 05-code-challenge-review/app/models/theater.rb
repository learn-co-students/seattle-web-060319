class Theater
  attr_accessor :title, :city

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def performances
    Performance.all.select{|performance| performance.theater == self}
  end

  def musicals
    self.performances.map{|performance| performance.musical}
  end
end

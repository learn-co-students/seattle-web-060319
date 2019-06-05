class Tweet
  attr_reader :message, :user
  attr_writer :message, :user

  @@all = []
  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def self.all
    # binding.pry
    @@all
  end

  def username
    @user.username
  end

  # instance method -> Every tweet belongs to a user
  # def user
  #   @user
  # end

  # def message
  #   @message
  # end
end

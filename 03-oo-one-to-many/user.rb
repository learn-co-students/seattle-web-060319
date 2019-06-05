class User
  attr_accessor :username

  # def name
  #   @reader
  # end

  # attr_writer
  # def name=(name)
  #   @name= name
  # end
  @@all = []

  def initialize(username)
    @username = username
    # @tweets = []
    @@all << self
  end

  def post_tweet(message)
    tweet = Tweet.new(message, self)
    # @tweets << tweet.message
    # binding.pry
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
    # User.tweet.all
  end

end

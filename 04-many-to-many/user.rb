class User
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def post_tweet(message)
    tweet = Tweet.new(message, self)
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  def self.all
    # binding.pry
    @@all
  end

  #like_tweet
  def like_tweet(tweet)
    Like.new(tweet, self)
  end

  def liked_tweets
    # Call Like.all
    # we need to know the user.
    # use self to look through likes.
    # binding.pry
    Like.all.select { |like| like.user == self }
  end

  def tweets
    # Return all the tweets I've liked
    # map will return whatever the evaluation.
    self.liked_tweets.map{|liked_tweets| liked_tweets.tweet }
  end

  def messages
    self.tweets.map {|tweet| tweet.message}
  end
end

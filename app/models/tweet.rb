class Tweet < ActiveRecord::Base

  attr_accessible :score, :uid , :user_id

  belongs_to :user

  def self.tweet_order
    Tweet.where().order("score DESC")
  end

  Twitter.configure do |config|
    config.consumer_key = 'QuJYhDz9nTHTDKPAOPmkQ'
    config.consumer_secret = '2LcZbXR9pDInnYm9CC7sKLXv4kdx0ofhHWnds1DhM'
    config.oauth_token = '1466107044-n4TBFS61OulKQNOfpuYqQLuPZ3f4mtQOL9MMPyR'
    config.oauth_token_secret = 'OeSvrhee4Q8HZhSzsk6XLCux4HdKLnp1Uh0C8Fdqww'
  end

  def read_tweet
    Twitter.status(self.uid)
  end

end

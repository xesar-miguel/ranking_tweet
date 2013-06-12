class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  has_many :tweets

  def self.new_twitter(authentication)
    create! do |user|
      user.uid = authentication['uid']
      user.name = authentication['info']['name']
      user.nickname = authentication['info']['nickname']
      user.picture = authentication['info']['image']
    end
  end


end

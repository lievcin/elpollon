class User < ActiveRecord::Base
  attr_accessible :name, :country
  has_and_belongs_to_many :polls
  has_many :cups , :through => :polls
  has_many :games , :through => :cups
  has_many :bets

  ACCESS_LEVELS = {
    normal: 0,
    poll_admin: 1,
    management: 2
  }

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.gender = auth.gender
      user.location = auth.info.location
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

  def is_management?
    ACCESS_LEVELS[:management] == access_level
  end
end

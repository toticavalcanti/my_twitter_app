class Tweet < ApplicationRecord # >
  belongs_to :user
  acts_as_votable
  belongs_to :tweet_original, class_name: 'Tweet', required: false
  has_many :retweets, class_name: 'Tweet', foreign_key: 'tweet_original_id'
  validates_presence_of :body, :user_id
end
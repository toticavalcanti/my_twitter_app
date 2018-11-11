module Api
  module V1
    class TweetSerializer < ActiveModel::Serializer # >
      attributes :id, :body, :tweet_original_id, :retweets_count, :likes_count, :liked
      belongs_to :tweet_original
      belongs_to :user
 
      def tweet_original
        options = { each_serializer: Api::V1::TweetSerializer }
        ActiveModelSerializers::SerializableResource.new(object.tweet_original, options) if object.tweet_original
      end
 
      def user
        options = { each_serializer: Api::V1::UserSerializer }
        ActiveModelSerializers::SerializableResource.new(object.user, options)
      end
 
      def retweets_count
        object.retweets.count
      end
 
      def likes_count
        object.votes_for.size
      end
 
      def liked
        object.liked_by current_user
      end
    end
  end
end
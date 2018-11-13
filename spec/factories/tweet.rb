FactoryBot.define do
    factory :tweet do
        body { FFaker::Lorem.phrase }
        user
        tweet_original nil
    end
end
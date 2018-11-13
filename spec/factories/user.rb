FactoryBot.define do
  factory :user do
    name         { FFaker::Lorem.word }
    email        { FFaker::Internet.email }
    password     { FFaker::Internet.password }
  end
end
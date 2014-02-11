FactoryGirl.define do

  factory :user do
    email { Faker::Internet.email }
    password 'password'
  end

  factory :submission do
    user
    link 'http://www.bbc.com/future/story/20140209-why-i-want-a-microchip-implant'
    description 'With a chip under your skin, you can do everything'
  end
end

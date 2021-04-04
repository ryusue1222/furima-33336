FactoryBot.define do
  factory :item do
    name                    {Faker::Name.initials(number: 10)}
    text                    {Faker::Lorem.sentence}
    category_id             {2}
    status_id               {2}
    shipping_id             {2}
    prefecture_id           {2}
    scheduled_delivery_id   {2}
    price_id                {500}
    association             :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
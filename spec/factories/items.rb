FactoryBot.define do
  factory :item do
    item_name      { 'aaa' }
    description    { Faker::Lorem.sentence }
    category_id    { 1 }
    condition_id   { 1 }
    postage_id     { 1 }
    prefecture_id  { 1 }
    scheduled_day_id { 1 }
    price          { 300 }
    user_id        { 1 }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png')
    end
  end
end

FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 6) }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    family_name           { '黒澤' }
    first_name            { '大平' }
    family_name_kana      { 'クロサワ' }
    first_name_kana       { 'ダイヘイ' }
    birthday              { '1988-11-09' }
  end
end

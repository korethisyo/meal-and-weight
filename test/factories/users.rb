FactoryBot.define do
  factory :user do
    name {"hiro"}
    nick_name {"ヒロ"}
    sequence(:email) { |n| "hiro#{n}@example.com"}
    password {"password"}
  end
end

FactoryBot.define do
  factory :weight do
    date {"2021/06/22"}
    weight {"89.1"}

    association :user
  end
end
